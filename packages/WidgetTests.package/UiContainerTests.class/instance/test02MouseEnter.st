testing
test02MouseEnter
	| evt aHand|
	sut isHighlighted: true.
	container2 isHighlighted: false.
	
	aHand := HandMorph new.
	aHand grabMorph: UiPushButton new.
	
	evt := MouseEvent new.
	evt setType: #mouseEnter position: container2 topLeft
		 buttons: 0 hand: aHand.
	container2 editMode: true.
	container2 handleMouseEnter: evt.

	self assert: (sut isHighlighted = false).		
	self assert: (container2 isHighlighted = true).