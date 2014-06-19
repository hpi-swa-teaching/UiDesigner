event handling
handleMouseEnter: evt

	(evt hand submorphs notEmpty and: self editMode) ifTrue: 
		[self highlight.
		(self owner isKindOf: UiContainer ) ifTrue: 
			[self owner unhighlight]]