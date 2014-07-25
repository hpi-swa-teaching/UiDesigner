data insertion
nodeCreators

	| nodeCreators |
	nodeCreators := IdentityDictionary newFrom: 
		{Boolean class -> [:cl :n :v :vs | self createBooleanNodeWithName: n andValue: v ].
		 Object class -> [:cl :n :v :vs | self createCodeNodeWithName: n andValue: v ].
		 Array -> [:cl :n :v :vs | self createListNodeWithName: n 
												withValues: vs AndCurrentValue: v ].
		String class -> [ :cl :n :v :vs | self createTextNodeWithName: n andValue: v ].
		Integer class -> [ :cl :n :v :vs | self createIntegerNodeWithName: n andValue: v ]}.
		
	^ nodeCreators