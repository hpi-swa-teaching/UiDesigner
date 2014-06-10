accessing
verticalOffset: aNumber

	aNumber = self verticalOffset ifTrue: [^ self].
	
	self offset: self offset x @ aNumber.
	
	self verticalOffsetChanged: self verticalOffset.  