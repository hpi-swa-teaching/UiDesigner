updating
addLayoutSettings: aMorph
	| topNode layoutNode |
	
	topNode := self createParentNodeFrom: 'Layout settings'.
	
	layoutNode := self createBooleanNodeWithName: 'Table' andValue: (aMorph hasTableLayout).
	(layoutNode at: #editorMorph) disconnectAllSignals.
	self connect: (layoutNode at: #editorMorph) signal: #clicked: to: self selector: #enableTableLayout:.
	topNode addChild: layoutNode.

	layoutNode := self createBooleanNodeWithName: 'Proportional' andValue: (aMorph hasProportionalLayout).
	(layoutNode at: #editorMorph) disconnectAllSignals.
	self connect: (layoutNode at: #editorMorph) signal: #clicked: to: self selector: #enableProportionalLayout:.
	topNode addChild: layoutNode.