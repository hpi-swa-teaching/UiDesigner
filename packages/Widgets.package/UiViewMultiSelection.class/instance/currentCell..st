accessing
currentCell: aPoint

	| oldCell |
	aPoint = currentCell ifTrue: [^ self].

	oldCell := currentCell.
	currentCell := aPoint.

	self currentCellChangedFrom: oldCell to: currentCell.