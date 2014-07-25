updating
addProportionalLayoutProperties: aMorph
	
	| topNode |
	topNode := self createParentNodeFrom: 'Proportional Layout'.
	
	topNode addChild: (self createIntegerNodeWithName: 'layoutInset' 
												 andValue: (aMorph layoutInset)).
	topNode addChild: (self createListNodeWithName: 'cellPositioning' withValues: 
							#(topLeft topRight bottomLeft bottomRight topCenter leftCenter 							
								rightCenter bottomCenter center) 
							AndCurrentValue: (aMorph cellPositioning)).