tests
test04AddItemList

	sut addTextList: #(a b c d e).
	
	self assert: 5 equals: sut size.