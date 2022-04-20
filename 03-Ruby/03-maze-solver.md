Maze solver

In this exercise, we want to write a program that will find a route between two points in a maze.

Here's an example maze. It has an 'S' for the start point, and an 'E' for an end point.
https://assets.aaonline.io/fullstack/ruby/projects/maze_solver/maze1.txt

You should write a program that will read in the maze, try to explore a path through it to the end, and then print out a completed path like so. If there is no such path, it should inform the user.
https://assets.aaonline.io/fullstack/ruby/projects/maze_solver/maze1_solution.txt

Make your program run as a command line script, taking in the name of a maze file on the command line.

Your path through the maze should not be self-intersecting, of course.

When you have found a first solution, write a version which will be sure to find the shortest path through the maze.
Resources

NB: Try taking a naive approach first. Once you've got something working read on...

    Reading Files progzoo
    Simple-ish explanation for computer pathfinding, start at "Starting the Search" heading a-star
    Wikipedia: maze shortest path wikipedia
    
    http://archive.gamedev.net/archive/reference/articles/article2003.html
    
    https://en.wikipedia.org/wiki/Maze-solving_algorithm#Shortest_path_algorithm
