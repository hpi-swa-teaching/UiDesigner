drawing
drawOn: aCanvas

	self editMode
		ifFalse: [^ super drawOn: aCanvas].
	
	aCanvas
		fillRectangle: self bounds
		fillStyle: ((self color = Color transparent)
			ifTrue: [SolidFillStyle color: ((Color gray: 0.3) alpha: 0.1)]
			ifFalse: [self fillStyle])
		borderStyle: self borderStyle.

	focusRectangle ifNotNil: [self drawFocusOn: aCanvas rectangle: focusRectangle].