expand/collapse - convenience
toggleTopLevelRow: aRowIndex

	self flag: #broken.
	self toggleIndex: (self model indexRow: aRowIndex column: 1 parent: nil).