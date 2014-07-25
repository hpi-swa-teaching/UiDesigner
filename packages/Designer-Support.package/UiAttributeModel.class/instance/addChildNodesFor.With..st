updating
addChildNodesFor: topNode With: aMorph

	topNode addChild: (self createListNodeWithName: 'hResizing' 
											withValues: #(rigid spaceFill shrinkWrap) 
											AndCurrentValue: (aMorph hResizing)).
	topNode addChild: (self createListNodeWithName: 'vResizing' 
											withValues: #(rigid spaceFill shrinkWrap)
											AndCurrentValue: (aMorph vResizing)).
	topNode addChild: (self createIntegerNodeWithName: 'minWidth' 
											andValue: (aMorph minWidth)).
	topNode addChild: (self createIntegerNodeWithName: 'minHeight' 
											andValue: (aMorph minHeight))