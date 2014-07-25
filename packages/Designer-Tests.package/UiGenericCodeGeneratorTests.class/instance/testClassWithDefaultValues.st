tests
testClassWithDefaultValues
	| tmpClass |
	sut generatedClassName: testClassName.
	sut category: testCategory.
	sut generateClass.
	tmpClass := Smalltalk at: (testClassName asSymbol).	
	self assert: (tmpClass isNil not).
	self assert: (tmpClass instVarNames isEmpty).
	
	