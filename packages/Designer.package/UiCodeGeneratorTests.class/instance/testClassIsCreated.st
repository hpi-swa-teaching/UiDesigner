tests
testClassIsCreated
	| testClass |
	testClass := self generator createNewClass: testClassName derivedFrom: 
		testSuperClass with: testInstanceVariable in: testPackage..
	self assert: ((Smalltalk at: testClassName asSymbol) isNil not).
	self assert: ((Smalltalk at: testClassName asSymbol) instVarNames first = self testInstanceVariable).
	Smalltalk removeClassNamed: ((Smalltalk at: testClassName asSymbol) name).
	
	