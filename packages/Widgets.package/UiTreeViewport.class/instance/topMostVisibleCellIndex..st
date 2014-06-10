drawing
topMostVisibleCellIndex: aCanvas
	| topLeft topLeftCell | 
	topLeft := self bounds pointNearestTo: aCanvas clipRect topLeft.
	topLeftCell := self cellIndexFromPoint: topLeft.
	^ topLeftCell
		ifNil: [1]
		ifNotNil: [:cell | cell y]