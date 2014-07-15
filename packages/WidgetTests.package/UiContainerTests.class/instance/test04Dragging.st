testing
test04Dragging
	| evt aHand|
	sut isHighlighted: false.
	
	aHand := HandMorph new.
	aHand grabMorph: UiPushButton new.
	
	evt := MouseEvent new.
	evt setType: #startDrag position: sut topLeft
		 buttons: 0 hand: aHand.
		
	sut editMode: true.
	sut startDrag: evt.

	self assert: (sut isHighlighted = true).