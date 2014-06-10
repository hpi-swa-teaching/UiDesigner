add/remove
remove: aCellIndex

	cellToUnselect = aCellIndex
		ifTrue: [
			cellToUnselect := nil.
			self cells: {aCellIndex}].