tests
test06IteratorNext

	| check |
	check := [:node | UiPlatform current string: node data includesSubstring: #orm].
	
	sut traversalMode: #depthFirst.
	
	self
		assert: #noWorm equals: (sut nextSatisfying: check) data;
		assert: #worm equals: (sut nextSatisfying: check) data;
		assert: (sut nextSatisfying: check) isNil;
		assert: sut next isNil.