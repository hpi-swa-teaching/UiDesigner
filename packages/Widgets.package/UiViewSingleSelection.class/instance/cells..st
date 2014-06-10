accessing
cells: somePoints

	| oldCell |
	oldCell := selectedCell.
	
	selectedCell := somePoints
		ifEmpty: [nil]
		ifNotEmpty: [somePoints first].
		
	self selectionChangedFrom: {oldCell} to: self cells.