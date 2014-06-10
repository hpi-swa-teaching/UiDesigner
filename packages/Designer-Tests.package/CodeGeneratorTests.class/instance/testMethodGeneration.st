tests
testMethodGeneration

	generator generatedClassName: testClassName.
	generator category: testCategory.
	generator generateClass.
	
	generator generateMethod: 'someTestMethod' with: '"some code..."'.
	
	self assert: (generator generatedClass canUnderstand: (testMethodName asSymbol)). 