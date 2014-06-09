tests
testClassIsCreated
	| tmpClass |
	generator superClass: testSuperClass.
	generator generatedClassName: testClassName.
	generator category: testCategory.
	generator instVars: testInstanceVariable.
	generator category:  testPackage.
	generator generateClass.
	
	tmpClass := Smalltalk at: (testClassName asSymbol).	
	self assert: (tmpClass isNil not).
	self assert: (tmpClass instVarNames first = testInstanceVariable).
	self assert: (tmpClass isKindOf: testSuperClass).
	
	Smalltalk removeClassNamed: ((Smalltalk at: testClassName asSymbol) name).
	
	