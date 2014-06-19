tests
test08Clear

	sut addPage.
	self assert: 1 equals: sut pages size.
	sut clear.
	self assert: sut pages isEmpty.
	