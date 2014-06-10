drawing
drawHoveredCellOn: aCanvas

	self hoveredCell ifNil: [^ self].

	self
		drawHighlightOn: aCanvas
		bounds: (self boundsFor: self hoveredCell)
		color: self selectionColorAdjusted muchLighter.