add/remove
add: aCellIndex

	| oldCell |
	aCellIndex ifNil: [^ self].
	aCellIndex = selectedCell ifTrue: [^ self].
	
	oldCell := selectedCell.
	
	self currentCell: aCellIndex.
	
	self selectionChangedFrom: {oldCell} to: {selectedCell}.