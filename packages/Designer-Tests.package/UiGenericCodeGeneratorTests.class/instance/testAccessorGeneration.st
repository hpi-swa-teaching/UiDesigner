tests
testAccessorGeneration
	
	generator generatedClassName: testClassName.
	generator category: testCategory.
	generator instVars: testInstanceVariable.
	generator generateClass.
	generator generateAccessors.
	
	self assert: (generator generatedClass canUnderstand: (testInstanceVariable asSymbol ))
	