code generation
generateMethod: aMethodName with: aMethodStub classified: aClassification

	self generatedClass compile: (
		aMethodName,'
		
	', aMethodStub
	) classified: aClassification.