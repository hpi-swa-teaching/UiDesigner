tests
test06RemoveCurrentPage

	| page1 page2 |
	page1 := Morph new.
	page2 := Morph new.
	
	sut
		addPage: page1;
		addPage: page2;
		currentIndex: 2.
		
	sut removeCurrentPage.
	self assert: sut currentPage == page1.
	
	sut removeCurrentPage.
	self assert: sut currentPage isNil.
