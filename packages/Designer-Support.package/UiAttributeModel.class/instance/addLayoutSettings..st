updating
addLayoutSettings: aMorph
	| topNode layoutNode |
	
	topNode := self createParentNodeFrom: 'Layout settings'.
	
	layoutNode := self createBooleanNodeWithName: 'Table' andValue: (aMorph hasTableLayout).
	layoutNode at: #saveCallback put: [ :newValue | self enableTableLayout: newValue ].
	topNode addChild: layoutNode.

	layoutNode := self createBooleanNodeWithName: 'Proportional' andValue: (aMorph hasProportionalLayout).
	layoutNode at: #saveCallback put: [ :newValue | self enableProportionalLayout: newValue ].
	topNode addChild: layoutNode.