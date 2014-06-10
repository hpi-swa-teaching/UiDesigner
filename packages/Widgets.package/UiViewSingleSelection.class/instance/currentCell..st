accessing
currentCell: aPoint

	| oldCell |
	aPoint = selectedCell ifTrue: [^ self].
	oldCell := selectedCell.
	
	selectedCell := aPoint.

	self currentCellChangedFrom: oldCell to: selectedCell.