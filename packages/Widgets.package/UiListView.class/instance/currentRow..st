selection - manual
currentRow: aRowIndex

	| numSeparators |
	self flag: #groupsMissing. "Needs groups support."
	numSeparators := 0.
	self viewport rows withIndexDo: [:rowInfo :rowIndex |
		rowInfo isSeparator ifTrue: [numSeparators := numSeparators  + 1].
		rowIndex - numSeparators = aRowIndex ifTrue: [
			self selection currentIndex: rowInfo firstModelIndex.
			^ self]].