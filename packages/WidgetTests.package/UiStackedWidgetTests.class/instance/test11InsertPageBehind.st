tests
test11InsertPageBehind

	sut
		addPage: (Morph new color: Color red);
		addPage: (Morph new color: Color yellow);
		currentIndex: 2.
		
	sut
		insertPage: (Morph new color: Color green)
		behind: sut currentPage.
		
	self
		assert: sut currentPage color = Color green;
		assert: sut currentIndex == 3;
		assert: sut pages size == 3.