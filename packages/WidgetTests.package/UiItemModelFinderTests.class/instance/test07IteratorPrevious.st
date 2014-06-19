tests
test07IteratorPrevious

	| check |
	check := [:node | UiPlatform current string: node data includesSubstring: #orm].
	
	sut
		traversalMode: #depthFirst;
		nextSatisfying: [:node | node data = #leafes].
	
	self
		assert: sut next isNil;
		assert: #worm equals: (sut previousSatisfying: check) data;
		assert: #noWorm equals: (sut previousSatisfying: check) data;
		assert: (sut previousSatisfying: check) isNil;
		assert: sut previous data isNil."root"