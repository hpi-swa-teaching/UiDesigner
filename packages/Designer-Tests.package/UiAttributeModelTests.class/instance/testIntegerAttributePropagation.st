tests
testIntegerAttributePropagation
	| node |
	
	node := model createIntegerNodeWithName: 'width' andValue: (button width).
	
	button width: 30..
	
	(node at: #editorMorph) converter value: 100.
	
	self assert: (button width) equals: 100.