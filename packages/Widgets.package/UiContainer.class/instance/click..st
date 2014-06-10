event handling
click: evt

"	| clickedMorph |
	clickedMorph := self submorphs detect: [:m | m bounds containsPoint: evt position] ifNone: [self].
	
	evt yellowButtonPressed ifTrue: [
		self showContextMenuForMorph: clickedMorph atHand: evt hand]."
	
	| clickedMorph |
	clickedMorph := self submorphs
		detect: [:m | m bounds containsPoint: evt position] ifNone: [self].
		
	self
		changeFocusTo: clickedMorph bounds;
		changeSelectionTo: clickedMorph.