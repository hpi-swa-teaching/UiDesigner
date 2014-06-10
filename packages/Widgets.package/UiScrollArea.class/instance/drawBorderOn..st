drawing
drawBorderOn: aCanvas

	self outerBorderWidth = 0 ifTrue: [^ self].
		
	UiPlatform current
		canvas: aCanvas
		frameRoundRect: self outerBounds
		radius: 3
		width: self outerBorderWidth
		color: (Color gray: 0.3).