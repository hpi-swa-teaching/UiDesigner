layout-properties
hResizing: aSymbol

	aSymbol = self hResizing
		ifTrue: [^ self].
		
	super hResizing: aSymbol.
	self updateLayout.  