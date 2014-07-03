testing
testMouseLeave
	| evt aHand|
	container2 highlight.
	
	aHand := HandMorph new.
	aHand grabMorph: UiPushButton new.
	
	evt := MouseEvent new.
	evt setType: #mouseLeave position: container1 topLeft
		 buttons: 0 hand: aHand.
	container2 editMode: true.
	container2 handleMouseLeave: evt.

	self assert: (container1 isHighlighted = true).
	self assert: (container2 isHighlighted = false).