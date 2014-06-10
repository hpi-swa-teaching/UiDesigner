edit mode - updating
updateCurrentPageSelection

	self editMode ifFalse: [^ self].

	self
		changeFocusTo: self currentPage bounds;
		changeSelectionTo: self currentPage.