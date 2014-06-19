tests
test10InsertPageInFrontOf

	sut
		addPage: (Morph new color: Color red);
		addPage: (Morph new color: Color yellow);
		currentIndex: 2.
		
	sut
		insertPage: (Morph new color: Color green)
		inFrontOf: sut currentPage.
		
	self
		assert: sut currentPage color = Color green;
		assert: sut currentIndex == 2;
		assert: sut pages size == 3.