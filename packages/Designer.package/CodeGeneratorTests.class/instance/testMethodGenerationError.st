tests
testMethodGenerationError
	| methodStub |
	methodStub := '"some code..."'.
	
	generator := UiGenericCodeGenerator new.
	
	self should: [generator generateMethod: testMethodName with: methodStub] raise: Exception 