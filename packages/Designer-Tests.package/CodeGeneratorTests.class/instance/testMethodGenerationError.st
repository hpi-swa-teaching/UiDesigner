tests
testMethodGenerationError
	| methodStub |
	methodStub := '"some code..."'.
	
	generator := CodeGenerator new.
	
	self should: [generator generateMethod: testMethodName with: methodStub] raise: Exception 