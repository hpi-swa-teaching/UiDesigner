tests
testPointAttributePropagation
	| node |
	
	node := model createPointNodeWithName: 'topLeft' andValue: (button topLeft).
	
	(node at: #editorMorph) converter value: '0@0'.
	
	self assert: (button topLeft) equals: 0@0.