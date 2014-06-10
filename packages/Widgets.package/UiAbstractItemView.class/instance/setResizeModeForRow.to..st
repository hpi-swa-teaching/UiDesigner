rows/columns - resizing
setResizeModeForRow: anIndex to: aSymbol

	(self viewport rowAt: anIndex)
		resizeMode: aSymbol.
		
	self updateViewportLayout.