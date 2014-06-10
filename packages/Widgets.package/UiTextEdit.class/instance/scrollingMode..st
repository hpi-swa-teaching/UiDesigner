accessing
scrollingMode: aSymbol

	scrollingMode = aSymbol ifTrue: [^ self].

	scrollingMode := aSymbol.
	
	self updateLayout.