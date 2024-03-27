
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






