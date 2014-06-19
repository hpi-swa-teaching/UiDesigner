tests - keyboard input
testK08SelectionOnFocusChange

	sut
		grabKeyboard;
		theText: 'Hello, World!'.
		
	self
		assert: sut hasKeyboard;
		assert: sut textMorph editor selectionInterval isEmpty.
		
	sut textMorph editor selectInterval: (1 to: 5).

	self assert: (1 to: 5) equals: sut textMorph editor selectionInterval.
	
	sut releaseKeyboard.
	TextMorph new grabKeyboard.
	
	self assert: (1 to: 5) equals: sut textMorph editor selectionInterval.