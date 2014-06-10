geometry
lowerBounds

	| b |
	b := self bounds.
	^ self orientation == #horizontal
		ifTrue: [b insetBy: (0@(b height * self fraction) corner: 0@0)]
		ifFalse: [b insetBy: ((b width * self fraction)@0 corner: 0@0)]