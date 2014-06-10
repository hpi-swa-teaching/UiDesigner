drawing
drawOverlayOn: aCanvas

	self shouldDraw ifFalse: [^ self].
	super drawOverlayOn: aCanvas.
	  
	self drawCacheActive ifTrue: [
		self drawTreeStructureOn: aCanvas].