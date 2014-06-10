add/remove
clear

	self pages removeAll.
	
	(self pages isEmpty and: [self editMode])
		ifTrue: [self addPage].
	
	self currentPage ifNil: [self currentIndex: self pages size].
	self updateCurrentPage.