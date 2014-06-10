actions
resize: widthOrHeight

	self orientation == #horizontal
		ifTrue: [self width: widthOrHeight]
		ifFalse: [self height: widthOrHeight].