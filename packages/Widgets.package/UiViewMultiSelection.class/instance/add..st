add/remove
add: aCellIndex

	| oldCells |
	
	(self cells includes: aCellIndex)
		ifTrue: [
			"Prepare to unselect the cell."
			cellToUnselect := aCellIndex]
		ifFalse: [
			"Select cell."
			oldCells := self cells copy.
			self cells add: aCellIndex.
			self selectionChangedFrom: oldCells to: self cells copy].
	
	self currentCell: aCellIndex.