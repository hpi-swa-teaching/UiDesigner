tests
test03BreadthFirstDo

	| lengths |
	lengths := OrderedCollection new.

	sut
		traversalMode: #breadthFirst;
		do: [:node | lengths add: node data size].
	
	self
		assert: #(5 4 4 5 6 5 4 11 7 6 6 4 3 5 4 5)
		equals: lengths asArray.