tests
test12InsertPage

	sut
		addPage: (Morph new color: Color red);
		addPage: (Morph new color: Color yellow);
		currentIndex: 1.
		
	sut insertPage.
		
	self assert: sut currentIndex == 2. "behind 1st position"