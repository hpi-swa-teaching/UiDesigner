updating
addChildNodesFor: topNode With: aMorph

	topNode 
			addChild: (self createListNodeWithName: 'hResizing' 
											withValues: #(rigid spaceFill shrinkWrap) 
											AndCurrentValue: (aMorph hResizing));
			addChild: (self createListNodeWithName: 'vResizing' 
											withValues: #(rigid spaceFill shrinkWrap)
											AndCurrentValue: (aMorph vResizing));
			addChild: (self createIntegerNodeWithName: 'minWidth' 
											andValue: (aMorph minWidth));
			addChild: (self createIntegerNodeWithName: 'minHeight' 
											andValue: (aMorph minHeight))