tests
testSurrouredClassPossible
	
	dialog detectClassExistsWarning: 'Morph'.
	self assert: ((dialog ui panel submorphs includes: (dialog ui saveWithSurroundingClass)) not).