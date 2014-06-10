drawing
drawOn: aCanvas
	
	self shouldDraw ifFalse: [^ self].
	
	super drawOn: aCanvas.
	
	self drawCacheActive ifFalse: [
		self drawTreeStructureOn: aCanvas].