drag/drop
dropsBefore: evt bounds: cellBounds

	self orientation == #vertical
		ifFalse: [^ super dropsBefore: evt bounds: cellBounds]
		ifTrue: [^ evt position x < (cellBounds left + (cellBounds width // 2))]