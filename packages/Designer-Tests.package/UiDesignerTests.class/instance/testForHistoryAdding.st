as yet unclassified
testForHistoryAdding
	designer onMorphAdded: (UiLineEdit new) into: designer container.	
	self assert: (designer actionHistory size > 0)