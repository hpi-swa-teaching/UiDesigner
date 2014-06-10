accessing - nodes
data: aSymbolOrIntegerOrBoolean for: aNode
	"Private. Access property directly or use a indirection via #properties in node. This makes tree nodes having different kinds of properties more flexible."
	
	| property |
	aSymbolOrIntegerOrBoolean ifNil: [^ nil].
	
	"Support hardcoded boolean defaults."
	aSymbolOrIntegerOrBoolean == true ifTrue: [^ true].
	aSymbolOrIntegerOrBoolean == false ifTrue: [^ false].
	
	"Support ordered properties referenced by an integer. Consider #properties in node."
	property := aSymbolOrIntegerOrBoolean isInteger
		ifTrue: [aNode properties at: aSymbolOrIntegerOrBoolean ifAbsent: []]
		ifFalse: [aSymbolOrIntegerOrBoolean].
	
	"Lookup property as accessor or key in dictionary."
	^ property ifNotNil: [:p | (p ~~ #yourself and: [aNode isDictionary])
		ifTrue: [aNode at: p ifAbsent: []]
		ifFalse: [aNode perform: p]]