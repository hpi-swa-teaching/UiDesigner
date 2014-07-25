drawing
setFillStyle

	self ui panel fillStyle: ((GradientFillStyle ramp: {
			0.0 -> (self ui panel color adjustBrightness: 0.1).
			0.1-> (self ui panel color adjustBrightness: 0.05).
			0.6 -> (self ui panel color darker)})
		origin: self innerBounds topLeft;
		direction: 0 @ self innerBounds height).