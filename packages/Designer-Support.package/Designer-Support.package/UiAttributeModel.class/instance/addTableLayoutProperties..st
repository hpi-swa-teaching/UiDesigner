updating
addTableLayoutProperties: aMorph
	| topNode |
	
	topNode := self createParentNodeFrom: 'Table Layout'.
	
	topNode addChild: (self createListNodeWithName: 'listDirection' withValues: #(leftToRight rightToLeft topToBottom bottomToTop) AndCurrentValue: (aMorph listDirection)).

	topNode addChild: (self createIntegerNodeWithName: 'cellInset' andValue: (aMorph cellInset)).
	topNode addChild: (self createCodeNodeWithName: 'layoutInset' andValue: (aMorph layoutInset)).

	topNode addChild: (self createListNodeWithName: 'cellPositioning' withValues: #(topLeft topRight bottomLeft bottomRight topCenter leftCenter rightCenter bottomCenter center) AndCurrentValue: (aMorph cellPositioning)).
	topNode addChild: (self createListNodeWithName: 'cellSpacing' withValues: #(globalRect globalSquare localRect localSquare none) AndCurrentValue: (aMorph cellSpacing)).
	topNode addChild: (self createListNodeWithName: 'listCentering' withValues: #(topLeft bottomRight center justified) AndCurrentValue: (aMorph listCentering)).
	topNode addChild: (self createListNodeWithName: 'listSpacing' withValues: #(equal none) AndCurrentValue: (aMorph listSpacing)).
	
	topNode addChild: (self createCodeNodeWithName: 'minCellSize' andValue: (aMorph minCellSize)).
	topNode addChild: (self createCodeNodeWithName: 'maxCellSize' andValue: (aMorph maxCellSize)).
	
	topNode addChild: (self createListNodeWithName: 'wrapCentering' withValues: #(topLeft bottomRight center justified) AndCurrentValue: (aMorph wrapCentering)).
	topNode addChild: (self createListNodeWithName: 'wrapDirection' withValues: #(leftToRight rightToLeft topToBottom bottomToTop none) AndCurrentValue: (aMorph wrapDirection)).