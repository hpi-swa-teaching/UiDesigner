colors - fillstyles
fillStyleHighlight

	^ (GradientFillStyle ramp: {
		0.0 -> (self color mixed: 0.6 with: self colorLighten).
		0.8 -> (self color mixed: 0.8 with: self colorDarken)})
	origin: (self orientation == #horizontal
		ifTrue: [self innerLowerBounds bottomCenter]
		ifFalse: [self innerLowerBounds rightCenter]);
	radial: true;
	direction: (self orientation == #horizontal
		ifTrue: [0 @ self innerLowerBounds height negated]
		ifFalse: [self innerLowerBounds width negated @ 0]);
	normal: (self orientation == #horizontal
		ifTrue: [(self innerLowerBounds width * 2) @ 0]
		ifFalse: [0 @ (self innerLowerBounds height * 2)])