tests
test05NextPreviousPage

	| page1 page2 |
	page1 := Morph new.
	page2 := Morph new.
	
	sut
		addPage: page1;
		addPage: page2;
		currentIndex: 1.
		
	self assert: sut currentPage == page1.
	sut nextPage.
	self assert: sut currentPage == page2.
	sut nextPage.
	self assert: sut currentPage == page2.
	sut previousPage.
	self assert: sut currentPage == page1.
	sut previousPage.
	self assert: sut currentPage == page1.