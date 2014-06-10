drawing
drawOn: aCanvas
	
	self shouldDraw ifFalse: [^ self].
	
	super drawOn: aCanvas.
		
	self drawCacheActive ifFalse: [
		self
			drawHoveredCellOn: aCanvas;
			drawSelectionOn: aCanvas;
			drawCurrentCellOn: aCanvas;
			drawHelpTextOn: aCanvas].