as yet unclassified
drawOverlayOn: aCanvas

	self shouldDraw ifFalse: [^ self].
	
	self drawCacheActive ifTrue: [
		self drawGridOn: aCanvas].
	
	super drawOverlayOn: aCanvas.