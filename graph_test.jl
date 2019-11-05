using Graphs
g = simple_graph(3)

add_edge!(g, 1, 2)
add_edge!(g, 3, 2)
add_edge!(g, 3, 1)
Graphs.plot(g)
