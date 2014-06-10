There is a difference between nodes and model indices. A node is an element in a tree-structured database. A model index corresponds to a node and one of multiple properties of a node. Model indices are tree-structured as well. (A cell in the viewport is a flattened model index for drawing and sorting reasons.)

The view should do node boxing and unboxing - not the viewport or the client.