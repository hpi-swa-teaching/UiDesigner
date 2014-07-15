tests
testSurrouredClassPossible
	
	sut detectClassExistsWarning: 'Morph'.
	self assert: (sut ui saveWithSurroundingClass visible not).