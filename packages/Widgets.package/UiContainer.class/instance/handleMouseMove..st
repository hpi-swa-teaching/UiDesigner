as yet unclassified
handleMouseMove: evt
	(evt hand submorphs notEmpty 
		and: ([self wantsDroppedMorph: (evt hand submorphs first) event: evt]))
		
			ifTrue: [(self hasHighlightedChildren)
						ifTrue: [(self isHighlighted)
									ifTrue: [self unhighlight]]
						ifFalse: [(self isHighlighted)
									ifFalse: [self highlight]]].
				
	(self isHighlighted) ifTrue: 
		[(self isAtBorder: evt)
			ifTrue: [self unhighlight]].