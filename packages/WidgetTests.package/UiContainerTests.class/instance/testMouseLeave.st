testing
testMouseLeave
	| evt aHand|
	container1 isHighlighted: true.
	
	aHand := HandMorph new.
	aHand grabMorph: UiPushButton new.
	
	evt := MouseEvent new.
	evt setType: #mouseLeave position: container1 topLeft
		 buttons: 0 hand: aHand.
	container1 editMode: true.
	container1 handleMouseLeave: evt.

	self assert: (container1 isHighlighted = false).