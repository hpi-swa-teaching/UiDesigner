selection
onCurrentCellChangedFrom: oldCellIndex to: newCellIndex

	self
		invalidRect: (self boundsFor: oldCellIndex);
		invalidRect: (self boundsFor: newCellIndex).
		
	self updateVisibilityForCheckBoxesFor: newCellIndex old: oldCellIndex.

	self
		updateFocus;
		currentIndexChanged: self selection currentIndex.
		
	(newCellIndex notNil and: [self editTriggers includes: #currentChanged])
		ifTrue: [self beginEditItem: (self morphAt: newCellIndex)].