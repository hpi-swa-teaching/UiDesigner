tests
test03CurrentIndexAndPage

	| page1 page2 |
	page1 := Morph new.
	page2 := Morph new.
	
	sut
		addPage: page1;
		addPage: page2.
		
	self
		assert: 2 equals: sut currentIndex;
		assert: sut currentPage == page2.
	
	sut currentIndex: 1.
	
	self
		assert: 1 equals: sut currentIndex;
		assert: sut currentPage == page1.
