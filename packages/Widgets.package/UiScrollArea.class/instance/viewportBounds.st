geometry
viewportBounds

	^ self bounds insetBy: (0@0 corner:
		(self isVerticalScrollBarVisible ifTrue: [self scrollBarThickness + 1] ifFalse: [0])
		@
		(self isHorizontalScrollBarVisible ifTrue: [self scrollBarThickness + 1] ifFalse: [0]))