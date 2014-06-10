selection - manual
currentRow

	| numSeparators |
	self flag: #groupsMissing. "Needs groups support."
	numSeparators := 0.
	self viewport rows withIndexDo: [:rowInfo :rowIndex |
		rowInfo isSeparator ifTrue: [numSeparators := numSeparators  + 1].
		rowInfo firstModelIndex = self selection currentIndex ifTrue: [
			^ rowIndex - numSeparators]].