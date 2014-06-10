drawing - cached
drawOverlayOn: aCanvas
	
	self shouldDraw ifFalse: [^ self].
	
	self drawCacheActive ifTrue: [
		| importantCells |		
		importantCells := (self selection cells, {self selection currentCell}, {self hoveredCell}) asSet.
		
		"Restore background."
		importantCells do: [:cell | self drawCell: cell whiteOn: aCanvas].
			
		self
			drawHoveredCellOn: aCanvas;
			drawSelectionOn: aCanvas;
			drawCurrentCellOn: aCanvas.
		
		"Fill foreground."	
		importantCells do: [:cell | self drawCell: cell on: aCanvas]].
		
	super drawOverlayOn: aCanvas.
	
	self drawDropTargetOn: aCanvas.