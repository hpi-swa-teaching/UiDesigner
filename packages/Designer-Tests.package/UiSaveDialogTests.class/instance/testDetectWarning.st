tests
testDetectWarning
	
	sut detectClassExistsWarning: 'Morph'.
	self assert: (sut ui warningLabel theText asString ~= '')