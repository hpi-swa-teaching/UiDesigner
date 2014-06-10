drawing
drawOn: aCanvas

	super drawOn: aCanvas.
	
	self outerBorderWidth > 0 ifTrue: [
		aCanvas
			frameRectangle: self outerBounds
			width: self outerBorderWidth
			color: self color darker].