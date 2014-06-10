updating
updateCurrentPage

	self removeAllMorphs.
	
	self currentPage ifNil: [^ self].
	self addMorphBack: self currentPage.
	
	self
		updateCurrentPageSelection;
		updateEditButtons.
		
	self currentPageChanged.