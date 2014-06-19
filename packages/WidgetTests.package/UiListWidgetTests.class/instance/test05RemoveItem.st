tests
test05RemoveItem

	sut
		addTextList: #(a b c d);
		removeLastRow.
		
	self assert: #c equals: sut items last text asString asSymbol.
	
	sut removeRowAt: 2.
	
	self assert: #(a c) equals: (sut items collect: [:item | item text asString asSymbol]) asArray.