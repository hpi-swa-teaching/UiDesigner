accessing
horizontalOffset: aNumber

	aNumber = self horizontalOffset ifTrue: [^ self].
	
	self offset: aNumber @ self offset y.

	self horizontalOffsetChanged: self horizontalOffset.  