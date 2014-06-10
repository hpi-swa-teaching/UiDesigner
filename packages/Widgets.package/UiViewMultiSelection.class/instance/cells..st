accessing
cells: somePoints

	| oldCells |
	oldCells := self cells.
	
	cells := somePoints
		ifEmpty: [nil]
		ifNotEmpty: [somePoints asSet].
		
	self selectionChangedFrom: oldCells to: self cells.