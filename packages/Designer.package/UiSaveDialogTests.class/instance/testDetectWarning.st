initialize
testDetectWarning
	
	dialog detectClassExistsWarning: 'Morph'.
	self assert: (dialog ui warningLabel theText asString ~= '')