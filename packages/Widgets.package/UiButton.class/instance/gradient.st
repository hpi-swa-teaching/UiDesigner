drawing
gradient
	"Generate a gradient based on the current color and geometry."

	| inverted baseColor |
	inverted := self down or: [self checked].
	baseColor := 	self hasKeyboard
		ifTrue: [(Color r: 0.5 g: 0.5 b: 1.0) muchLighter]
		ifFalse: [self color].
	baseColor := inverted
		ifTrue: [baseColor darker]
		ifFalse: [baseColor].
	
	^ (GradientFillStyle ramp: {
			0.0 -> (baseColor adjustBrightness: 0.1).
			0.1-> (baseColor adjustBrightness: 0.05).
			0.6 -> (baseColor darker)})
		origin: (inverted
			ifTrue: [self innerBounds bottomLeft]
			ifFalse: [self innerBounds topLeft]);
		direction: (inverted
			ifTrue: [0 @ self innerBounds height negated]
			ifFalse: [0 @ self innerBounds height]).