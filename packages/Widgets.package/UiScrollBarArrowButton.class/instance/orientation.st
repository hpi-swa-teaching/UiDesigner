accessing
orientation

	^ (self direction == #left or: [self direction == #right])
		ifTrue: [#horizontal]
		ifFalse: [#vertical]