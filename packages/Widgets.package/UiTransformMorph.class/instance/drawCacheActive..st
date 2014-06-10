caching
drawCacheActive: aBoolean

	aBoolean = drawCacheActive ifTrue: [^ self].

	drawCacheActive := aBoolean.
	
	drawCacheActive
		ifTrue: [self startStepping]
		ifFalse: [self
			stopStepping;
			redrawLater].