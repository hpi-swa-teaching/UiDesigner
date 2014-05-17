updating
addOwnerSpecificLayout: aMorph
	| topNode |
	
	topNode := self createParentNodeFrom: 'Owner-specific Layout'.
	
	topNode addChild: (self createListNodeWithName: 'hResizing' withValues: #(rigid spaceFill shrinkWrap) AndCurrentValue: (aMorph hResizing)).
	topNode addChild: (self createListNodeWithName: 'vResizing' withValues: #(rigid spaceFill shrinkWrap) AndCurrentValue: (aMorph vResizing)).
	topNode addChild: (self createIntegerNodeWithName: 'minWidth' andValue: (aMorph minWidth)).
	topNode addChild: (self createIntegerNodeWithName: 'minHeight' andValue: (aMorph minHeight)).
	
	(aMorph owner isUiContainer and: [aMorph owner hasTableLayout]) ifTrue: [
		topNode addChild: (self createBooleanNodeWithName: 'disableTableLayout' andValue: (aMorph disableTableLayout))].
	
	(aMorph owner isUiContainer and: [aMorph owner hasProportionalLayout]) ifTrue: [
		topNode addChild: (self createRectangleNodeWithName: 'frameFractions' andValue: (aMorph frameFractions)).
		 topNode addChild: (self createRectangleNodeWithName: 'frameOffsets' andValue: (aMorph frameOffsets))].