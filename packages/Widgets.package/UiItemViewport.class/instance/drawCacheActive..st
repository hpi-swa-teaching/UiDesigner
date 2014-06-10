drawing - cached
drawCacheActive: aBoolean

	aBoolean = drawCacheActive ifTrue: [^ self].
	
	drawCacheActive := aBoolean.
	
	drawCacheActive
		ifTrue: [self updateDrawCache].