drawing
bottomMostVisibleCellIndex: aCanvas
	| bottomLeftCell bottomLeft |
	bottomLeft := self bounds pointNearestTo: aCanvas clipRect bottomLeft.
	bottomLeftCell := self cellIndexFromPoint: bottomLeft.
	^ bottomLeftCell
		ifNil: [self rows size]
		ifNotNil: [:cell | cell y]