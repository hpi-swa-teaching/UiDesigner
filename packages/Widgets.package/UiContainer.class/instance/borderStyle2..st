accessing
borderStyle2: aSymbol

	aSymbol ifNil: [^ self].
	
	aSymbol = #simple
		ifTrue: [^ self borderColor: Color transparent].
	
	^ self borderColor: aSymbol