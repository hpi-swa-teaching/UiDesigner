add/remove
remove: aCellIndex

	| oldCells |
	cellToUnselect = aCellIndex
		"Unselect the cell."
		ifTrue: [
			cellToUnselect := nil.
			oldCells := self cells copy.
			self cells remove: aCellIndex.
			self selectionChangedFrom: oldCells to: self cells copy].