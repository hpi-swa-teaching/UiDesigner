tests
test02DepthFirstDo

	| lengths |
	lengths := OrderedCollection new.

	sut
		traversalMode: #depthFirst;
		do: [:node | lengths add: node data size].
			
	self
		assert: #(5 5 6 5 6 4 4 4 3 5 11 4 7 4 5 6)
		equals: lengths asArray.