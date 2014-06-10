drawing
drawSelectionOn: aCanvas

	self selection cells do: [:cell |
		self
			drawHighlightOn: aCanvas
			bounds: (self boundsFor: cell)
			color: self selectionColorAdjusted].