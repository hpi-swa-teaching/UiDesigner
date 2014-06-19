tests
test07LayoutingInContainer

	| container anotherSut |
	container := Morph new
		changeTableLayout.
		
	sut
		width: 10;
		hResizing: #spaceFill;
		theText: 'Lorem ipsum blubb top.'.
		
	anotherSut := UiTextEdit new
		width: 10;
		hResizing: #spaceFill;
		theText: 'Lorem ipsum blubb bottom.'.

	container
		addMorphBack: sut;
		addMorphBack: anotherSut.
	
	container fullBounds. "compute layout"

	self assert: sut outerBounds bottom equals: anotherSut outerBounds top.