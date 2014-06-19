as yet unclassified
test09CurrentItem

	| item |
	sut
		addTextList: #(a b);
		currentRow: 2.
		
	item := sut currentItem.
	sut currentRow: 1.
	self assert: sut currentItem ~= item.
	sut currentItem: item.
	self assert: item equals: sut currentItem.