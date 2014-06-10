edit mode - updating
updateSelfSelection

	self editMode ifFalse: [^ self].

	self
		changeFocusTo: self bounds;
		changeSelectionTo: self.