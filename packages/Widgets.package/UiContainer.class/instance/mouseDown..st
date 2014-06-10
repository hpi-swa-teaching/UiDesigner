event handling
mouseDown: evt

	"| clickedMorph |
	clickedMorph := self submorphs
		detect: [:m | m bounds containsPoint: evt position] ifNone: [self].
	
	self submorphs do: [:m |
		m ~~ clickedMorph
			ifTrue: [m setProperty: #hasFocus toValue: false]].
	self setProperty: #hasFocus toValue: false.
	
	clickedMorph setProperty: #hasFocus toValue: true.
	self changeSelectionTo: clickedMorph."

	evt hand
		waitForClicksOrDrag: self
		event: evt
		selectors: {#click:. nil. nil. #startDrag:}
		threshold: 1. "pixel threshold"
		
	"self redrawLater.
	(self owner isKindOf: UiContainer) ifTrue: [self owner redrawLater]."