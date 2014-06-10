rows/columns - resizing
setResizeModeForColumn: anIndex to: aSymbol

	(self viewport columnAt: anIndex) = aSymbol
		ifTrue: [^ self].
		
	(self viewport columnAt: anIndex)
		resizeMode: aSymbol.
		
	aSymbol == #spaceFill ifTrue: [
		self
			widgetResizable: true;
			horizontalScrollBarPolicy: #alwaysOff].
		
	aSymbol == #rigid ifTrue: [
		(self viewport columnAt: anIndex)
			resize: UiViewColumnInfo defaultWidth].
		
	self updateViewportLayout.