testing
testForHistoryAdding
	sut onMorphAdded: (UiLineEdit new) into: sut container.	
	self assert: (sut actionHistory size > 0)