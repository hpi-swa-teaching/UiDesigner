tests
test07LayoutingInContainer

	| container anotherSut |
	container := Morph new
		changeTableLayout.
		
	sut
		width: 10;
		hResizing: #spaceFill;
		theText: 'Lorem ipsum blubb top.';
		areaResizable: true;
		verticalScrollBarPolicy: #alwaysOff.
		
	anotherSut := UiTextEdit new
		width: 10;
		hResizing: #spaceFill;
		theText: 'Lorem ipsum blubb bottom.';
		areaResizable: true;
		verticalScrollBarPolicy: #alwaysOff.

	container
		addMorphBack: sut;
		addMorphBack: anotherSut.
	
	container fullBounds. "compute layout"

	"Layout computation is buggy here. Try to work with it and check here if the bug still exists."
	self deny: sut outerBounds bottom = anotherSut outerBounds top.