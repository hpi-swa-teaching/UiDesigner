testing
test03MouseLeave
	| evt aHand|
	container2 highlight.
	
	aHand := HandMorph new.
	aHand grabMorph: UiPushButton new.
	
	evt := MouseEvent new.
	evt setType: #mouseLeave position: sut topLeft
		 buttons: 0 hand: aHand.
	container2 editMode: true.
	container2 handleMouseLeave: evt.

	self assert: (sut isHighlighted = true).
	self assert: (container2 isHighlighted = false).