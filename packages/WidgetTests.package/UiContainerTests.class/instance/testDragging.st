testing
testDragging
	| evt aHand|
	container1 isHighlighted: false.
	
	aHand := HandMorph new.
	aHand grabMorph: UiPushButton new.
	
	evt := MouseEvent new.
	evt setType: #startDrag position: container2 topLeft
		 buttons: 0 hand: aHand.
		
	container1 editMode: true.
	container1 startDrag: evt.

	self assert: (container1 isHighlighted = true).