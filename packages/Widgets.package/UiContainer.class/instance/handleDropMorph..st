event handling
handleDropMorph: anEvent
	UiContainer allInstancesDo: [ :i | (i isHighlighted)
										ifTrue: [i unhighlight]].
	UiButtonGroup allInstancesDo: [ :i | (i isHighlighted)
										ifTrue: [i unhighlight]].
	UiWidgetPage allInstancesDo: [ :i | (i isHighlighted)
										ifTrue: [i unhighlight]].
	super handleDropMorph: anEvent.