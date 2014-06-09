tests
testClassWithDefaultValues
	| tmpClass |
	generator generatedClassName: testClassName.
	generator category: testCategory.
	generator generateClass.
	
	tmpClass := Smalltalk at: (testClassName asSymbol).	
	self assert: (tmpClass isNil not).
	self assert: (tmpClass instVarNames isEmpty).
	
	