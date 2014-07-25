code generation
generateMethod: aMethodName with: aMethodStub classified: aClassification

	self generatedClass compile: (
		aMethodName,'
		
	', self warningCommentTemplate,'
	', aMethodStub
	) classified: aClassification.