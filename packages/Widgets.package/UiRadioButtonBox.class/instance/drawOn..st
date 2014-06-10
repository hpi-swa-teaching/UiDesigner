drawing
drawOn: aCanvas

	self setProperty: #fillStyle toValue: self gradient.
	
	aCanvas
		fillOval: self bounds
		fillStyle: self fillStyle.

	self drawBorderOn: aCanvas.