tests
testAccessorGeneration
	
	sut generatedClassName: testClassName.
	sut category: testCategory.
	sut instVars: testInstanceVariable.
	sut generateClass.
	sut generateAccessors.
	
	self assert: (sut generatedClass canUnderstand: (testInstanceVariable asSymbol ))
	