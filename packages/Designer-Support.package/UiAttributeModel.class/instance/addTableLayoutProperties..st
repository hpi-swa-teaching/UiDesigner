updating
addTableLayoutProperties: aMorph
	
	| topNode |
	topNode := self createParentNodeFrom: 'Table Layout'.
	
	topNode addChild: (self createListNodeWithName: 'listDirection' withValues: 
						#(leftToRight rightToLeft topToBottom bottomToTop)
						AndCurrentValue: (aMorph listDirection));
			addChild: (self createIntegerNodeWithName: 'cellInset' 
						andValue: (aMorph cellInset));
			addChild: (self createCodeNodeWithName: 'layoutInset' 
						andValue: (aMorph layoutInset));
			addChild: (self createListNodeWithName: 'cellPositioning' withValues:
						#(topLeft topRight bottomLeft bottomRight topCenter leftCenter
						 rightCenter bottomCenter center) 
						AndCurrentValue: (aMorph cellPositioning));
			addChild: (self createListNodeWithName: 'cellSpacing' withValues: 
						#(globalRect globalSquare localRect localSquare none) 						AndCurrentValue: (aMorph cellSpacing));
			addChild: (self createListNodeWithName: 'listCentering' withValues: 
						#(topLeft bottomRight center justified) 
						AndCurrentValue: (aMorph listCentering));
			addChild: (self createListNodeWithName: 'listSpacing' withValues: 
						#(equal none) 
						AndCurrentValue: (aMorph listSpacing));	
			addChild: (self createCodeNodeWithName: 'minCellSize' 
						andValue: (aMorph minCellSize));
			addChild: (self createCodeNodeWithName: 'maxCellSize' 
						andValue: (aMorph maxCellSize));	
			addChild: (self createListNodeWithName: 'wrapCentering' withValues: 
						#(topLeft bottomRight center justified) 
						AndCurrentValue: (aMorph wrapCentering));
			addChild: (self createListNodeWithName: 'wrapDirection' withValues: 
						#(leftToRight rightToLeft topToBottom bottomToTop none)
						AndCurrentValue: (aMorph wrapDirection))