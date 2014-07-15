tests
testClassIsCreated
	| tmpClass |
	sut superClass: testSuperClass.
	sut generatedClassName: testClassName.
	sut category: testCategory.
	sut instVars: testInstanceVariable.
	sut category:  testPackage.
	sut generateClass.
	
	tmpClass := Smalltalk at: (testClassName asSymbol).	
	self assert: (tmpClass isNil not).
	self assert: (tmpClass instVarNames first = testInstanceVariable).
	self assert: (tmpClass inheritsFrom: testSuperClass).
	
	