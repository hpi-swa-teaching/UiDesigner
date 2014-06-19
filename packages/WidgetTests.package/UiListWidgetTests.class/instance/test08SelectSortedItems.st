tests
test08SelectSortedItems
	"Check for sorting independent model access."
	
	sut
		enableAutoSort;
		addTextList: #(d c b a);
		currentRow: 2.
	
	self assert: #c equals: sut currentText asString asSymbol.