event handling
handleMouseMove: evt
	(evt hand submorphs notEmpty and: self editMode)
		
			ifTrue: [(self hasHighlightedChildren)
						ifTrue: [(self isHighlighted)
									ifTrue: [self unhighlight]]
						ifFalse: [(self isHighlighted)
									ifFalse: [self highlight]]].
	(self isHighlighted) ifTrue: 
		[(self isAtBorder: evt)
			ifTrue: [self unhighlight]].