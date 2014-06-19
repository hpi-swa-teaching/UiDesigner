tests
test02AddPage

	| myPage |
	myPage := Morph new.
	sut addPage: myPage.
	self assert: sut currentPage == myPage.