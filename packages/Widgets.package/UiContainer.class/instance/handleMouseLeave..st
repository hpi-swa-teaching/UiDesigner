event handling
handleMouseLeave: evt
	(evt hand submorphs notEmpty and: self editMode) ifTrue: 
		[self unhighlight.
		(self owner isKindOf: UiContainer ) ifTrue: 
			[self owner highlight]]