drawing
drawHighlightFrameOn: aCanvas bounds: drawBounds color: aColor
	
	UiPlatform current
		canvas: aCanvas
		frameRoundRect: (drawBounds outsetBy: (0@0 corner: 0@1))
		radius: 3
		width: 1
		color: aColor muchDarker.