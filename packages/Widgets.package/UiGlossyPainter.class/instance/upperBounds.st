geometry
upperBounds

	| b |
	b := self bounds.
	^ self orientation == #horizontal
		ifTrue: [b insetBy: (0@0 corner: 0@(b height * (1 - self fraction)))]
		ifFalse: [b insetBy: (0@0 corner: (b width * (1 - self fraction))@ 0)]