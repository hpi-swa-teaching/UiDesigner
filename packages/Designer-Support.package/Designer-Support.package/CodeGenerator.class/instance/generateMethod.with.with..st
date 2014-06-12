code generation
generateMethod: aMethodName with: aMethodStub with: aClassification

	self generatedClass compile: (
		aMethodName,'
		
	', aMethodStub
	) classified: aClassification.