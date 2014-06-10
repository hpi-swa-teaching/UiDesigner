geometry
innerUpperBounds

	^ self upperBounds insetBy: (1@1 corner: 
		(self orientation == #horizontal ifTrue: [1@0] ifFalse: [0@1]))