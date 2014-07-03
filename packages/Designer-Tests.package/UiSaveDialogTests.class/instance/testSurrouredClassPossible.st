tests
testSurrouredClassPossible
	
	dialog detectClassExistsWarning: 'Morph'.
	self assert: (dialog ui saveWithSurroundingClass visible not).