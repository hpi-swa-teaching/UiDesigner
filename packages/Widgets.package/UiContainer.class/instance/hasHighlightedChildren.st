highlighting
hasHighlightedChildren
	self children do: [ :i | (i isUiContainer) ifTrue: 
								[(i isHighlighted) 
									ifTrue: [^true]]].
	self children do: [ :i | (i isUiContainer) ifTrue: 
								[(i hasHighlightedChildren)
										ifTrue: [^true]]].
								
	^ false