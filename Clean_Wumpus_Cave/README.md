# Clean the Wumpus Cave - AI-1 Systems Project

## Overview

This project is a part of the AI-1 Systems Project for the Winter Semester 2023/24 at Friedrich-Alexander-Universität Erlangen-Nürnberg, focusing on the application of agents in AI search within a simulated environment. The primary objective is to navigate a vacuum cleaner robot through the Wumpus cave, efficiently cleaning the area through a series of instructions.

![Results Overview](Clean_Wumpus_Cave/screenshot.png)

## Assignment Tasks

The assignment comprises two main tasks:

1. **Checking Plans**: Determine if a given sequence of instructions successfully cleans the entire Wumpus cave.
2. **Generating Plans**: Develop an optimal sequence of instructions for cleaning the cave, with a focus on minimizing the instruction set for efficiency.

## Solution Approach

- Implemented an algorithm to simulate the movement of the vacuum cleaner within the Wumpus cave, adhering to the cave's grid-like structure and handling obstacles such as walls.
- Developed a plan generator that utilizes search algorithms to explore possible movements and ensure every accessible square is cleaned.
- Optimized the solution to shorten the sequence of instructions while guaranteeing complete coverage of the cave.

## Repository Structure

- `WumpusCave.ipynb`: Jupyter notebook containing the detailed implementation of the solution, including algorithm descriptions and testing scenarios.

## Dependencies

- numpy
- matplotlib
- scipy

## Contributions

This project welcomes contributions and suggestions. For major changes, please open an issue first to discuss what you would like to change. Please ensure to update tests as appropriate.

