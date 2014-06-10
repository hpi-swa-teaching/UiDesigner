geometry
resize: aNumber

	size = aNumber ifTrue: [^ self].
	
	size := aNumber.
	self headerItem ifNotNil: [:hi |
		hi resize: aNumber].
	
	self updateItemSize.