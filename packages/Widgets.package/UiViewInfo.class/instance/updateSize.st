geometry
updateSize

	self resizeMode == #shrinkWrap
		ifTrue: [self resize: self optimalSize]
		ifFalse: [self updateItemSize].