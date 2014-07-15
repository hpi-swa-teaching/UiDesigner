tests
testMethodGeneration

	sut generatedClassName: testClassName.
	sut category: testCategory.
	sut generateClass.
	
	sut generateMethod: testMethodName with: '"some code..."'.
	
	self assert: (sut generatedClass canUnderstand: (testMethodName asSymbol)). 