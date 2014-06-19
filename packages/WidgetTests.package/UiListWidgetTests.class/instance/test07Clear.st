tests
test07Clear

	sut
		addTextList: #(a b c d);
		currentRow: 2.
	
	self deny: sut isEmpty.
	
	sut clear.
	
	self
		assert: sut isEmpty;
		assert: 0 equals: sut currentRow.