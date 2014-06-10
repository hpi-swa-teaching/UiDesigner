layout-properties
vResizing: aSymbol

	aSymbol = self vResizing
		ifTrue: [^ self].
		
	super vResizing: aSymbol.
	self updateLayout.  