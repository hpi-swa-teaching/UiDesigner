tests
test08New

	self
		assert: sut root equals: sut current;
		assert: #depthFirst equals: sut traversalMode.