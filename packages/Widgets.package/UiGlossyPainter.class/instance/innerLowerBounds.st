geometry
innerLowerBounds

	^ self lowerBounds insetBy: (
		(self orientation == #horizontal ifTrue: [1@0] ifFalse: [0@1]) corner: 1@1)