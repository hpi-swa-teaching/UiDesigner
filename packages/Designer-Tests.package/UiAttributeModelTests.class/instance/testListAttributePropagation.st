tests
testListAttributePropagation

	| listNode |
	listNode := model createListNodeWithName: 'hResizing' 
						withValues: #(rigid spaceFill shrinkWrap) 
						AndCurrentValue: (button hResizing).	
	button hResizing: #rigid.	
	(listNode at: #editorMorph) converter value: 'spaceFill'.
	self assert: (button hResizing) equals: #spaceFill.