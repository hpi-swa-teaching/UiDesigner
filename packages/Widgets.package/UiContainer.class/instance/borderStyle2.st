accessing
borderStyle2

	^ self borderColor isSymbol
		ifTrue: [self borderColor]
		ifFalse: [#simple]