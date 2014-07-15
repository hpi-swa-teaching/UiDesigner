tests
testBooleanAttributePropagation
	| node oldvalue |
	
	node := model createBooleanNodeWithName: 'enabled' andValue: (button enabled).
	oldvalue := button enabled.	
	(node at: #editorMorph) doClick.
	
	self assert: (button enabled) equals: (oldvalue not).