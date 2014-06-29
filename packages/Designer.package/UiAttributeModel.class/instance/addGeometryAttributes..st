updating
addGeometryAttributes: aMorph
	| topNode |
	
	topNode := self createParentNodeFrom: 'Geometry'.
	
	topNode addChild: (self createPointNodeWithName: 'topLeft' andValue: (aMorph topLeft)).
	topNode addChild: (self createIntegerNodeWithName: 'width' andValue: (aMorph width)).
	topNode addChild: (self createIntegerNodeWithName: 'height' andValue: (aMorph height)).