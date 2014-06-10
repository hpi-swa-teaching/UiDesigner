drawing
drawOn: aCanvas
	
	| gradient fauxBounds |	
	gradient := (GradientFillStyle ramp: {
			0.0 -> Color white.
			0.1-> (self color adjustBrightness: 0.05).
			0.6 -> (self color darker)})
		origin: self topLeft;
		direction: 0@ self height.
		
	UiPlatform current
		canvas: aCanvas
		fillRoundRect: (self bounds insetBy: (1@1 corner: 1@1))
		radius: 3
		fillStyle: gradient;
		canvas: aCanvas
		frameRoundRect: self bounds
		radius: 3
		width: 1
		color: self color muchDarker.
		
	self setDefaultContentsIfNil.
	(self startingIndex > text size)
		ifTrue: [self drawNullTextOn: aCanvas].
	"Hack here:  The canvas expects bounds to carry the location of the text, but we also need to communicate clipping."
	fauxBounds := self bounds topLeft corner: self innerBounds bottomRight.
	aCanvas paragraph: self paragraph bounds: fauxBounds color: textColor