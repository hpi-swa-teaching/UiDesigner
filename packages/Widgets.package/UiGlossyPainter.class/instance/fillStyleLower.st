colors - fillstyles
fillStyleLower

	highlight == true ifTrue: [^ self fillStyleHighlight].

	^ (GradientFillStyle ramp: {
		0.0 -> (self color mixed: 0.85 with: self colorDarken).
		1.0 -> (self color mixed: 0.8 with: self colorDarken)})
	origin: self lowerBounds topLeft;
	direction: (self orientation == #horizontal
		ifTrue: [0 @ self lowerBounds height]
		ifFalse: [self lowerBounds width @ 0])