edit mode - event handling
click: evt

	| clickedMorph |
	clickedMorph := self currentPage submorphs
		detect: [:m | m bounds containsPoint: evt position] ifNone: [self].
	
	clickedMorph == self
		ifTrue: [self
			changeFocusTo: self currentPage bounds;
			changeSelectionTo: self currentPage]
		ifFalse: [self
			changeFocusTo: clickedMorph bounds;
			changeSelectionTo: clickedMorph].