import numpy
import random
import os
import glob
import subprocess

def find_start_position(map):
    start_x, start_y = None, None
    #max_height, max_width = len(map), len(map[0])
    for y, row in enumerate(map):
        for x, char in enumerate(row):
            if char == 'S':
                start_x, start_y = x, y
                break
        if start_x is not None:  # Break outer loop if start found
            break

    #if start_x is None:
        #raise ValueError("Start position 'S' not found in the map.")
    
    return start_x,start_y

def find_elements_in_map(map_data):
    """
    Finds positions of various elements in the map, including the agent's start position ('S'),
    walls ('X'), and crates ('C').
    
    Args:
    map_data (list of str): The map represented as a list of strings, where each string is a row.
    
    Returns:
    dict: A dictionary with keys 'start', 'walls', and 'crates', each mapping to a list of (x, y) positions.
    """
    elements = {'start': None, 'walls': [], 'crates': [], 'walls':[],'wumpus':[],'arrows':[],'fireworks':[],'halfcrates':[],'pits':[],'empty_cells':[]}
    for y, row in enumerate(map_data):
        for x, char in enumerate(row):
            if char == 'S':
                elements['start'] = (x, y)
            elif char == 'X':
                elements['walls'].append((x, y))
            elif char == 'C':
                elements['crates'].append((x, y))
            elif char=='W':
                elements['wumpus'].append((x,y))
            elif char=='A':
                elements['arrows'].append((x,y))
            elif char=='F':
                elements['fireworks'].append((x,y))
            elif char=='H':
                elements['halfcrates'].append((x,y))
            elif char=='P':
                elements['pits'].append((x,y))
            else:
                elements['empty_cells'].append((x,y))
    return elements

def read_map_from_file(filename):
    #initial_position_known=True
    with open(filename, 'r') as file:
        content = file.readlines()
        #print(content)
        # Remove only the newline character at the end if it exists
        map_data = [line[:-1] if line.endswith('\n') else line for line in content]
        try: 
            start_x,start_y=find_start_position(map_data)
        except Exception as e:
            print(f"Could not find the starting position: {e}")
            start_x,start_y=None, None
    
    return map_data,start_x,start_y

def find_crate_positions(map_data):
    crate_positions = []
    for y, row in enumerate(map_data):
        for x, char in enumerate(row):
            if char == 'C':
                crate_positions.append((x, y))
    return crate_positions

def get_objects_and_paths_with_virtual_exits(map_data):
    objects = []
    paths = []
    virtual_exits = []
    max_y = len(map_data)
    max_x = len(map_data[0]) if max_y > 0 else 0

    # First, identify all objects and potential paths, including those adjacent to crates
    for y, row in enumerate(map_data):
        for x, char in enumerate(row):
            if char != 'X':  # Include both empty cells and crates as objects but exclude walls
                obj_name = f"p{x}_{y}"
                objects.append(obj_name)

                # Check right and below, including paths to crates for potential pushing
                if x + 1 < max_x and map_data[y][x + 1] != 'X':
                    paths.append((obj_name, f"p{x+1}_{y}"))
                    paths.append((f"p{x+1}_{y}", obj_name))  # Add reverse path for bidirectionality
                if y + 1 < max_y and map_data[y + 1][x] != 'X':
                    paths.append((obj_name, f"p{x}_{y+1}"))
                    paths.append((f"p{x}_{y+1}", obj_name))  # Similarly, add reverse paths

    # Add virtual exits for the edges, excluding where there are walls or crates
    for x in range(max_x):
        if map_data[0][x] != 'X':  # Top edge virtual exit
            virtual_exit = f"p{x}_{-1}"
            objects.append(virtual_exit)
            paths.append((f"p{x}_0", virtual_exit))
            virtual_exits.append(virtual_exit)
        
        if map_data[max_y - 1][x] != 'X':  # Bottom edge virtual exit
            virtual_exit = f"p{x}_{max_y}"
            objects.append(virtual_exit)
            paths.append((f"p{x}_{max_y-1}", virtual_exit))
            virtual_exits.append(virtual_exit)

    for y in range(max_y):
        if map_data[y][0] != 'X':  # Left edge virtual exit
            virtual_exit = f"p{-1}_{y}"
            objects.append(virtual_exit)
            paths.append((f"p0_{y}", virtual_exit))
            virtual_exits.append(virtual_exit)
        
        if map_data[y][max_x - 1] != 'X':  # Right edge virtual exit
            virtual_exit = f"p{max_x}_{y}"
            objects.append(virtual_exit)
            paths.append((f"p{max_x-1}_{y}", virtual_exit))
            virtual_exits.append(virtual_exit)

    return objects, paths, virtual_exits



def get_edges_and_goal_with_virtual_exits(map_data):
    max_y = len(map_data)
    max_x = len(map_data[0]) if max_y > 0 else 0
    edges_and_virtual_exits = []

    # Function to generate virtual exit name
    def virtual_exit(x, y, direction):
        if direction == "north":
            return f"p{x}_{y-1}"
        elif direction == "south":
            return f"p{x}_{y+1}"
        elif direction == "east":
            return f"p{x+1}_{y}"
        elif direction == "west":
            return f"p{x-1}_{y}"

    # Identify real edge positions and their corresponding virtual exits
    for x in range(max_x):
        if map_data[0][x] != 'X':  # Top edge
            edges_and_virtual_exits.append((f"p{x}_0", virtual_exit(x, 0, "north")))
        if map_data[max_y - 1][x] != 'X':  # Bottom edge
            edges_and_virtual_exits.append((f"p{x}_{max_y-1}", virtual_exit(x, max_y-1, "south")))

    for y in range(max_y):
        if map_data[y][0] != 'X':  # Left edge
            edges_and_virtual_exits.append((f"p0_{y}", virtual_exit(0, y, "west")))
        if map_data[y][max_x - 1] != 'X':  # Right edge
            edges_and_virtual_exits.append((f"p{max_x-1}_{y}", virtual_exit(max_x-1, y, "east")))

    # Adjust goal to include reaching any virtual exit
    goal = "(or " + " ".join([f"(agent-at {exit[1]})" for exit in edges_and_virtual_exits]) + ")"

    return edges_and_virtual_exits, goal

def compute_is_same_line_predicates(objects):
    same_line_predicates = []
    positions = [obj for obj in objects if 'p' in obj]  # Filter only position objects

    # Create a dictionary where keys are coordinates, and values are positions
    coord_to_pos = {tuple(map(int, pos[1:].split('_'))): pos for pos in positions}

    # Check each position against all others to find same line relationships
    for (x1, y1), pos1 in coord_to_pos.items():
        for (x2, y2), pos2 in coord_to_pos.items():
            if pos1 == pos2:  # Skip self
                continue
            if x1 == x2:  # Same column
                same_line_predicates.append(f"(is_same_line {pos1} {pos2})")
            elif y1 == y2:  # Same row
                same_line_predicates.append(f"(is_same_line {pos1} {pos2})")
    
    return same_line_predicates


def generate_pddl_for_map_with_virtual_exits(filename):
    # Read map and find start position, objects, paths, and virtual exits
    map_data, start_x, start_y = read_map_from_file(filename)
    objects, paths, virtual_exits = get_objects_and_paths_with_virtual_exits(map_data)
    #crate_positions = find_crate_positions(map_data)  # Assume this function is defined

    elements=find_elements_in_map(map_data)

    crate_positions=elements['crates']
    crates = [f"crate{i+1}" for i, _ in enumerate(crate_positions)]

    #empty_cells = [obj for obj in objects if obj not in [f"p{x}_{y}" for x, y in crate_positions]]
    empty_cells=elements['empty_cells']

    wumpus_positions=elements['wumpus']
    wumpuses = [f"wumpus{i+1}" for i, _ in enumerate(wumpus_positions)]

    arrow_positions=elements['arrows']
    arrows = [f"arrow{i+1}" for i, _ in enumerate(arrow_positions)]

    firework_positions=elements['fireworks']
    fireworks = [f"firework{i+1}" for i, _ in enumerate(firework_positions)]

    halfcrate_positions=elements['halfcrates']
    halfcrates = [f"halfcrate{i+1}" for i, _ in enumerate(halfcrate_positions)]

    pit_positions=elements['pits']
    pits = [f"pit{i+1}" for i, _ in enumerate(pit_positions)]

    is_same_line_predicates = compute_is_same_line_predicates(objects)
    # Adjusting objects to include crate
    domain_pddl =  """
(define (domain wumpus_world)
    (:requirements :strips :typing)
    (:types pos crate wumpus arrow firework halfcrate pit) ; Define types for positions and crates
    (:predicates
        (agent-at ?pos - pos) ; Agent is at a position
        (crate-at ?crate - crate ?pos - pos) ; Crate is at a position
        (path ?from - pos ?to - pos) ; Path exists between positions
        (outside ?pos - pos) ; Position is outside the map (goal positions)
        (empty ?pos - pos) ; Position is empty
        (is_same_line ?pos1 - pos ?pos2 - pos) ; True if pos1 and pos2 are on the same line
        (wumpus-at ?wumpus - wumpus ?pos - pos);
        (arrow-at ?arrow - arrow ?pos - pos);
        (has-arrow);
        (firework-at ?firework - firework ?pos - pos);
        (walkable ?pos - pos); position is walkable
        (halfcrate-at ?halfcrate - halfcrate ?pos - pos);
        (firework-count-0);
        (firework-count-1);
        (firework-count-2);
        (firework-count-3);
        (pit-at ?pit - pit ?pos - pos) ; Predicate to represent the presence of a pit
        (filled ?pit - pit) ; Predicate to represent a filled pit
        (half-filled ?pit - pit) ; Predicate to represent a half-filled pit
        (empty-pit ?pit - pit)
    )

(:action move_firework
    :parameters (?from - pos ?to - pos ?firework - firework)
    :precondition (and 
        (agent-at ?from) 
        (path ?from ?to) 
        (firework-at ?firework ?to)
        (or (firework-count-0) (firework-count-1)(firework-count-2))
        (walkable ?to)
    )
    :effect (and 
        (not (agent-at ?from)) 
        (agent-at ?to)
        (not (firework-at ?firework ?to))
        (when (firework-count-0) (and (not (firework-count-0)) (firework-count-1)))
        (when (firework-count-1) (and (not (firework-count-1)) (firework-count-2)))
        (when (firework-count-2) (and (not (firework-count-2)) (firework-count-3)))
        (empty ?from)
        (walkable ?from)
    )
)

(:action move_arrow
    :parameters (?from - pos ?to - pos ?arrow - arrow)
    :precondition (and 
        (agent-at ?from) 
        (path ?from ?to) 
        (and (arrow-at ?arrow ?to) (not (has-arrow)))
        (walkable ?to)
        
    )
    :effect (and 

        (not (agent-at ?from)) 
        (agent-at ?to)
        (not (arrow-at ?arrow ?to))
        (has-arrow)
        (empty ?from)
        (walkable ?from)

    )
)

  (:action move
        :parameters (?from - pos ?to - pos)
        :precondition (and 
            (agent-at ?from) 
            (path ?from ?to) 
            (empty ?to)
            (walkable ?to)
        )
        :effect (and 
            (not (agent-at ?from)) 
            (agent-at ?to)
            (not (empty ?to)) 
            (empty ?from)
            (walkable ?from)
        )
    )

  (:action move_walkable
        :parameters (?from - pos ?to - pos)
        :precondition (and 
            (agent-at ?from) 
            (path ?from ?to) 
            (walkable ?to)
            (not (empty ?to))
        )
        :effect (and 
            (not (agent-at ?from)) 
            (agent-at ?to)
            (not (empty ?to)) 
            (walkable ?from)
        )
    )

    (:action push
        :parameters (?agent - pos ?from - pos ?to - pos ?crate - crate)
        :precondition (and 
            (agent-at ?agent) 
            (crate-at ?crate ?from) 
            (path ?agent ?from) 
            (path ?from ?to) 
            (empty ?to)
            (not (outside ?to))
            (is_same_line ?agent ?to) ; Ensure from and to are on the same line
        )

        :effect (and 
            (not (agent-at ?agent)) 
            (agent-at ?from) 
            (not (crate-at ?crate ?from)) 
            (crate-at ?crate ?to) 
            (empty ?agent) 
            (not (empty ?to))
            (walkable ?from)
            (not (walkable ?to))
        )
    )

          (:action push_halfcrate
        :parameters (?agent - pos ?from - pos ?to - pos ?halfcrate - halfcrate)
        :precondition (and
            (agent-at ?agent)
            (halfcrate-at ?halfcrate ?from)
            (path ?agent ?from)
            (path ?from ?to)
            (empty ?to)
            (not (outside ?to))
            (is_same_line ?agent ?to)
        )
        :effect (and
            (not (agent-at ?agent))
            (agent-at ?from)
            (not (halfcrate-at ?halfcrate ?from))
            (halfcrate-at ?halfcrate ?to)
            (empty ?agent)
            (not (empty ?to))
            (walkable ?from)
            (not (walkable ?to))
        )
    )

    (:action push_two_halfcrates
        :parameters (?agent - pos ?from1 - pos ?from2 - pos ?to - pos ?halfcrate1 - halfcrate ?halfcrate2 - halfcrate)
        :precondition (and
            (agent-at ?agent)
            (halfcrate-at ?halfcrate1 ?from1)
            (halfcrate-at ?halfcrate2 ?from2)
            (path ?agent ?from1)
            (path ?from1 ?from2)
            (path ?from2 ?to)
            (empty ?to)
            (not (outside ?to))
            (is_same_line ?agent ?to)
            (is_same_line ?agent ?from2)
            (is_same_line ?agent ?from1)
            (walkable ?to)
        )
        :effect (and
            (not (agent-at ?agent))
            (agent-at ?from1)
            (not (halfcrate-at ?halfcrate1 ?from1))
            (halfcrate-at ?halfcrate1 ?from2)
            (not (halfcrate-at ?halfcrate2 ?from2))
            (halfcrate-at ?halfcrate2 ?to)
            (empty ?agent)
            (not (empty ?to))
            (not (empty ?from2))
            (walkable ?from1)
            (not (walkable ?from2))
            (not (walkable ?to))
        )
    )


    (:action shoot
    :parameters (?from - pos ?to - pos ?wumpus - wumpus)
    :precondition (and 
        (agent-at ?from) 
        (wumpus-at ?wumpus ?to) 
        (has-arrow)
        (path ?from ?to) ; Assumes a direct line of sight from the agent to the Wumpus
    )

    :effect (and 
        (not (wumpus-at ?wumpus ?to)) ; The Wumpus is eliminated
        (not (has-arrow)) ; The agent uses the arrow
        (empty ?to) ; Explicitly mark the position as empty
        (walkable ?to);
    )
)
    (:action scare
        :parameters (?agent - pos ?from - pos ?to - pos ?wumpus - wumpus)
        :precondition (and 
            (agent-at ?agent)
            (not (agent-at ?from)) 
            (wumpus-at ?wumpus ?from) 
            (path ?agent ?from) 
            (path ?from ?to) 
            (or (firework-count-1) (firework-count-2)(firework-count-3))
            (walkable ?to)
            (not (outside ?to))
            (is_same_line ?agent ?to) ; Ensure from and to are on the same line
        )

        :effect (and 
            (agent-at ?agent)
            (not (wumpus-at ?wumpus ?from)) 
            (wumpus-at ?wumpus ?to) 
            (empty ?from)
            (not (empty ?to))
            (walkable ?from)
            (not (walkable ?to))
            (when (firework-count-3) (and (not(firework-count-3))(firework-count-2)))
            (when (firework-count-2) (and (not(firework-count-2))(firework-count-1)))
            (when (firework-count-1) (and (not(firework-count-1))(firework-count-0)))
        )
    )

    (:action push_crate_into_empty_pit
        :parameters (?agent - pos ?from - pos ?to - pos ?crate - crate ?pit - pit)
        :precondition (and
            (agent-at ?agent)
            (crate-at ?crate ?from)
            (path ?agent ?from)
            (path ?from ?to)
            (pit-at ?pit ?to)
            (empty-pit ?pit)
            (is_same_line ?agent ?to)
        )
        :effect (and
            (not (agent-at ?agent))
            (agent-at ?from)
            (not (crate-at ?crate ?from))
            (walkable ?from)
            (walkable ?to)
            (filled ?pit)
            (not (empty-pit ?pit))
            (empty ?agent)

        )
    )

    (:action push_halfcrate_into_empty_pit
        :parameters (?agent - pos ?from - pos ?to - pos ?halfcrate - halfcrate ?pit - pit)
        :precondition (and
            (agent-at ?agent)
            (halfcrate-at ?halfcrate ?from)
            (path ?agent ?from)
            (path ?from ?to)
            (pit-at ?pit ?to)
            (empty-pit ?pit)
            (is_same_line ?agent ?to)
        )
        :effect (and
            (not (agent-at ?agent))
            (agent-at ?from)
            (not (halfcrate-at ?halfcrate ?from))
            (half-filled ?pit)
            (not (empty-pit ?pit))
            (empty ?agent)
            (walkable ?from)
        )
    )

    (:action push_halfcrate_into_half_filled_pit
        :parameters (?agent - pos ?from - pos ?to - pos ?halfcrate - halfcrate ?pit - pit)
        :precondition (and
            (agent-at ?agent)
            (halfcrate-at ?halfcrate ?from)
            (path ?agent ?from)
            (path ?from ?to)
            (pit-at ?pit ?to)
            (half-filled ?pit)
            (is_same_line ?agent ?to)
        )
        :effect (and
            (not (agent-at ?agent))
            (agent-at ?from)
            (not (halfcrate-at ?halfcrate ?from))
            (filled ?pit)
            (not (half-filled ?pit))
            (empty ?agent)
            (walkable ?to)
            (walkable ?from)
        )
    )

    (:action push_crate_into_half_filled_pit
        :parameters (?agent - pos ?from - pos ?to - pos ?crate - crate ?pit - pit)
        :precondition (and
            (agent-at ?agent)
            (crate-at ?crate ?from)
            (path ?agent ?from)
            (path ?from ?to)
            (pit-at ?pit ?to)
            (half-filled ?pit)
            (is_same_line ?agent ?to)
        )
        :effect (and
            (not (agent-at ?agent))
            (agent-at ?from)
            (not (crate-at ?crate ?from))
            (not (half-filled ?pit))
            (not (walkable ?to))
            (empty ?agent)
            (walkable ?from)
        )
    )

        (:action push_two_halfcrates_into_empty_pit
        :parameters (?agent - pos ?from1 - pos ?from2 - pos ?to - pos ?halfcrate1 - halfcrate ?halfcrate2 - halfcrate ?pit - pit)
        :precondition (and
            (agent-at ?agent)
            (halfcrate-at ?halfcrate1 ?from1)
            (halfcrate-at ?halfcrate2 ?from2)
            (path ?agent ?from1)
            (path ?from1 ?from2)
            (path ?from2 ?to)
            (pit-at ?pit ?to)
            (empty-pit ?pit)
            (is_same_line ?agent ?to)
            (is_same_line ?agent ?from2)
            (is_same_line ?agent ?from1)
        )
        :effect (and
            (not (agent-at ?agent))
            (agent-at ?from1)
            (not (halfcrate-at ?halfcrate1 ?from1))
            (halfcrate-at ?halfcrate1 ?from2)
            (not (halfcrate-at ?halfcrate2 ?from2))
            (empty ?agent)
            (not (empty ?to))
            (half-filled ?pit)
            (not (empty-pit ?pit))
        )
    )

    (:action push_two_halfcrates_into_half_filled_pit
        :parameters (?agent - pos ?from1 - pos ?from2 - pos ?to - pos ?halfcrate1 - halfcrate ?halfcrate2 - halfcrate ?pit - pit)
        :precondition (and
            (agent-at ?agent)
            (halfcrate-at ?halfcrate1 ?from1)
            (halfcrate-at ?halfcrate2 ?from2)
            (path ?agent ?from1)
            (path ?from1 ?from2)
            (path ?from2 ?to)
            (pit-at ?pit ?to)
            (half-filled ?pit)
            (is_same_line ?agent ?to)
            (is_same_line ?agent ?from2)
            (is_same_line ?agent ?from1)
        )
        :effect (and
            (not (agent-at ?agent))
            (agent-at ?from1)
            (not (halfcrate-at ?halfcrate1 ?from1))
            (halfcrate-at ?halfcrate1 ?from2)
            (not (halfcrate-at ?halfcrate2 ?from2))
            (empty ?agent)
            (not (empty ?to))
            (not(half-filled ?pit))
            (filled ?pit)
            (not (empty-pit ?pit))
            (walkable ?to)
        )
    )

    )






"""

    # Generate Problem PDDL with adjustments for virtual exits
    problem_pddl = f"""
(define (problem simple_escape)
    (:domain wumpus_world)
    (:objects
        {' '.join(objects)} - pos
        {' '.join(crates)} - crate
        {' '.join(wumpuses)} - wumpus
        {' '.join(arrows)} - arrow
        {' '.join(fireworks)} - firework
        {' '.join(halfcrates)} - halfcrate
        {' '.join(pits)} - pit

    )
    (:init
        (agent-at p{start_x}_{start_y})
        (firework-count-0);
        {' '.join(f"(empty-pit {pit}) " for pit in pits)}
        {' '.join(f"(path {path[0]} {path[1]})" for path in paths)}
        {' '.join(f"(crate-at {crates[i]} p{crate_positions[i][0]}_{crate_positions[i][1]})" for i in range(len(crate_positions)))}
        {' '.join(f"(wumpus-at {wumpuses[i]} p{wumpus_positions[i][0]}_{wumpus_positions[i][1]})" for i in range(len(wumpus_positions)))}
        {' '.join(f"(arrow-at {arrows[i]} p{arrow_positions[i][0]}_{arrow_positions[i][1]})" for i in range(len(arrow_positions)))}
        {' '.join(f"(firework-at {fireworks[i]} p{firework_positions[i][0]}_{firework_positions[i][1]})" for i in range(len(firework_positions)))}
        {' '.join(f"(empty p{cell[0]}_{cell[1]})" for cell in empty_cells)}
        {' '.join(f"(empty {cell})" for cell in virtual_exits)}
        {' '.join(f"(outside {exit})" for exit in virtual_exits)}
        {' '.join(f"(walkable p{cell[0]}_{cell[1]})" for cell in empty_cells)}
        {' '.join(f"(walkable {cell})" for cell in virtual_exits)}
        {' '.join(f"(walkable p{arrow_positions[i][0]}_{arrow_positions[i][1]})" for i in range(len(arrow_positions)))}
        {' '.join(f"(walkable p{firework_positions[i][0]}_{firework_positions[i][1]})" for i in range(len(firework_positions)))}
        {' '.join(f"(halfcrate-at {halfcrates[i]} p{halfcrate_positions[i][0]}_{halfcrate_positions[i][1]})" for i in range(len(halfcrate_positions)))}
        {' '.join(f"(pit-at {pits[i]} p{pit_positions[i][0]}_{pit_positions[i][1]})" for i in range(len(pit_positions)))}
        {' '.join(is_same_line_predicates)}
    )
    (:goal
        (or {' '.join(f"(agent-at {exit})" for exit in virtual_exits)})
    )
)
"""
    return domain_pddl,problem_pddl

def write_pddl_files(filename, domain_pddl, problem_pddl):
    domain_filename = filename.replace(".txt", "_domain.pddl")
    problem_filename = filename.replace(".txt", "_problem.pddl")
    
    with open(domain_filename, 'w') as f:
        f.write(domain_pddl)
    
    with open(problem_filename, 'w') as f:
        f.write(problem_pddl)

def generate_and_write_pddl_for_map(filename):
    # Generate PDDL
    domain_pddl, problem_pddl = generate_pddl_for_map_with_virtual_exits(filename)
    
    # Write to files
    write_pddl_files(filename, domain_pddl, problem_pddl)
    print(f"PDDL files written: {filename.replace('.txt', '_domain.pddl')} and {filename.replace('.txt', '_problem.pddl')}")

    
def convert_moves_to_directions(moves):
    directions = []
    for move in moves:
        move_cleaned = move.strip().strip("()\n")
        action_parts = move_cleaned.split()

        if action_parts[0] == "move":
            _, from_pos, to_pos = action_parts
        if action_parts[0] == "move_walkable":
            _, from_pos, to_pos = action_parts
        elif action_parts[0] == "move_arrow":
            _, from_pos, to_pos,_ = action_parts
        elif action_parts[0] == "move_firework":
            _, from_pos, to_pos,_ = action_parts
        elif action_parts[0] == "shoot":
            _, from_pos, to_pos,_ = action_parts
        elif action_parts[0] == "push":
            _, agent_from, from_pos, to_pos, _ = action_parts
        elif action_parts[0] == "scare":
            _, agent_from, from_pos, to_pos, _ = action_parts
        elif action_parts[0] == "push_halfcrate":
            _, agent_from, from_pos, to_pos, _ = action_parts
        elif action_parts[0] == "push_two_halfcrates":
            _, agent_from, from_pos, from_pos2, to_pos,_,_ = action_parts
        elif action_parts[0] == "push_crate_into_empty_pit":
            _, agent_from, from_pos,to_pos,_,_ = action_parts
        elif action_parts[0] == "push_halfcrate_into_empty_pit":
            _, agent_from, from_pos, to_pos,_,_ = action_parts
        elif action_parts[0] == "push_halfcrate_into_half_filled_pit":
            _, agent_from, from_pos, to_pos,_,_ = action_parts
        elif action_parts[0] == "push_crate_into_half_filled_pit":
            _, agent_from, from_pos, to_pos,_,_ = action_parts
        elif action_parts[0] == "push_two_halfcrates_into_empty_pit":
            _, agent_from, from_pos, from_pos2, to_pos,_,_,_ = action_parts
        elif action_parts[0] == "push_two_halfcrates_into_half_filled_pit":
            _, agent_from, from_pos, from_pos2, to_pos,_,_,_ = action_parts


        from_x, from_y = map(int, from_pos[1:].split('_'))
        to_x, to_y = map(int, to_pos[1:].split('_'))

        # Determine the direction based on the difference in coordinates
        direction = None
        if to_x > from_x:
            direction = "east"
        elif to_x < from_x:
            direction = "west"
        elif to_y > from_y:
            direction = "south"
        elif to_y < from_y:
            direction = "north"
        
        if action_parts[0] == "move":
            directions.append(f"walk {direction}")
        if action_parts[0] == "move_walkable":
            directions.append(f"walk {direction}")
        elif action_parts[0] == "push":
            directions.append(f"push {direction}")
        elif action_parts[0] == "shoot":
            directions.append(f"shoot {direction}")
        elif action_parts[0] == "move_arrow":
            directions.append(f"walk {direction}")
        elif action_parts[0] == "move_firework":
            directions.append(f"walk {direction}")
        elif action_parts[0] == "scare":
            directions.append(f"scare {direction}")    
        elif action_parts[0] == "push_halfcrate":
            directions.append(f"push {direction}")    
        elif action_parts[0] == "push_two_halfcrates":
            directions.append(f"push {direction}")    
        elif action_parts[0] == "push_crate_into_empty_pit":
            directions.append(f"push {direction}")
        elif action_parts[0] == "push_halfcrate_into_empty_pit":
            directions.append(f"push {direction}")   
        elif action_parts[0] == "push_halfcrate_into_half_filled_pit":
            directions.append(f"push {direction}")
        elif action_parts[0] == "push_crate_into_half_filled_pit":
            directions.append(f"push {direction}")
        elif action_parts[0] == "push_two_halfcrates_into_empty_pit":
            directions.append(f"push {direction}")      
        elif action_parts[0] == "push_two_halfcrates_into_half_filled_pit":
            directions.append(f"push {direction}")                                    
    return directions



def convert_and_write_directions(input_dir, output_dir):
    # Ensure the output directory exists
    os.makedirs(output_dir, exist_ok=True)
    
    # Find all solution files in the input directory
    solution_files = glob.glob(os.path.join(input_dir, 'sas_plan_map*.txt'))
    
    for solution_file in solution_files:
        with open(solution_file, 'r') as f:
            moves = f.readlines()
        moves_data = [line[:-1] if line.endswith('\n') else line for line in moves]
        #print(moves_data)
        # Convert move actions to directions
        directions = convert_moves_to_directions(moves_data[:-1])
        
        # Construct the output filename based on the input file's name
        base_name = os.path.basename(solution_file)
        map_number = base_name.replace('sas_plan_map', '').replace('.txt', '')
        output_filename = os.path.join(output_dir, f'map{map_number}-solution.txt')
        
        # Write the directions to the new file
        with open(output_filename, 'w') as f:
            for direction in directions:
                f.write(direction + '\n')