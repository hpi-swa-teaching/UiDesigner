colors - fillstyles
fillStyleUpper

	^ (GradientFillStyle ramp: {
		0.0 -> (self color mixed: 0.6 with: self colorLighten).
		1.0 -> (self color mixed: 0.9 with: self colorDarken)})
	origin: self upperBounds topLeft;
	direction: (self orientation == #horizontal
		ifTrue: [0 @ self upperBounds height]
		ifFalse: [self upperBounds width @ 0])