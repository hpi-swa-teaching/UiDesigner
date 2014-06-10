geometry
outerBounds

	^ bounds
		ifNil: [super outerBounds]
		ifNotNil: [:b | b outsetBy: 1 "artificial"]