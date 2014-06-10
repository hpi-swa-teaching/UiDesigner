add/remove
removeCurrentPage

	self currentPage ifNil: [^ self].
	self pages remove: self currentPage.
	
	(self pages isEmpty and: [self editMode])
		ifTrue: [self addPage].
	
	self currentPage ifNil: [self currentIndex: self pages size].
	self updateCurrentPage.