tests
test01AddEmptyPage

	self assert: sut pages isEmpty.
	sut addPage.
	self
		assert: 1 equals: sut pages size;
		assert: sut currentPage == sut pages first.