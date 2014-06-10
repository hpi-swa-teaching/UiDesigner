drawing
drawHighlightOn: aCanvas bounds: drawBounds color: aColor
	
	| gradient |

	gradient := (GradientFillStyle ramp: {
			0.0 -> Color white.
			0.1-> (aColor adjustBrightness: 0.05).
			0.6 -> (aColor darker)})
		origin: drawBounds topLeft;
		direction: 0 @ drawBounds height.
		
	UiPlatform current
		canvas: aCanvas
		fillRoundRect: (drawBounds insetBy: (1@1 corner: 1@1))
		radius: 3
		fillStyle: gradient.
		
	self drawHighlightFrameOn: aCanvas bounds: drawBounds color: aColor.