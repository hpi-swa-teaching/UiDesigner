add/remove
add: aCellIndex

	(self cells includes: aCellIndex)
		ifTrue: [
			"Prepare to unselect the cell."
			cellToUnselect := aCellIndex]
		ifFalse: [
			"Select cell. Discard old selection."
			self cells: {aCellIndex}].
	
	self currentCell: aCellIndex.