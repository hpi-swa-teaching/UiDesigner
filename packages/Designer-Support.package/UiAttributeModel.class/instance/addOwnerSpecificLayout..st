updating
addOwnerSpecificLayout: aMorph

	| topNode |
	topNode := self createParentNodeFrom: 'Owner-specific layout'.
	
	self addChildNodesFor: topNode With: aMorph.
	
	(aMorph owner isUiContainer and: [aMorph owner hasTableLayout]) ifTrue: 
		[topNode addChild: (self createBooleanNodeWithName: 'disableTableLayout' 
												andValue: (aMorph disableTableLayout))].
	
	(aMorph owner isUiContainer and: [aMorph owner hasProportionalLayout]) ifTrue: 
		[topNode addChild: (self createRectangleNodeWithName: 'frameFractions' 
												andValue: (aMorph frameFractions)).
		 topNode addChild: (self createRectangleNodeWithName: 'frameOffsets' 
												andValue: (aMorph frameOffsets))]