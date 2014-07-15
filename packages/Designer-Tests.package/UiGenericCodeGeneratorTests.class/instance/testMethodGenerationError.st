tests
testMethodGenerationError
	| methodStub |
	methodStub := '"some code..."'.
	
	self should: [sut generateMethod: testMethodName with: methodStub] raise: Exception 