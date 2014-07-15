tests
testRectangleAttributePropagation
	| node |
	
	node := model createRectangleNodeWithName: 'layoutInset' andValue: (button layoutInset).	
	(node at: #editorMorph) converter value: '0.23@0 corner: 0.75@10'.
	
	self assert: (button layoutInset) equals: (0.23@0 corner: 0.75@10).