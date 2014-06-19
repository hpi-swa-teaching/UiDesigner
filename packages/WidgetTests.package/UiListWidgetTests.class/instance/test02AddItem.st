tests
test02AddItem

	sut addText: 'foobar'.
	
	self
		assert: sut currentItem isNil;
		assert: 1 equals: sut size.
		
	sut
		addIcon: (Form extent: 16@16 depth: 32)
		text: 'save'.
	
	self assert: 2 equals: sut size.