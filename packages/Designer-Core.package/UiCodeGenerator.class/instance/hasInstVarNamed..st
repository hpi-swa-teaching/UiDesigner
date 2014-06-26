codeInjection
hasInstVarNamed: aName

	self namedInstVars do:  [ :each |
		((each at: #name) = aName)
			ifTrue: [^true.]].
	^ false.