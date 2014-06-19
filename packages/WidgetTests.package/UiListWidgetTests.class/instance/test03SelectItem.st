tests
test03SelectItem

	sut addText: 'foobar'.
	
	self assert: sut currentItem isNil.
	
	sut currentRow: 1.
	
	self assert: 'foobar' equals: sut currentText asString.