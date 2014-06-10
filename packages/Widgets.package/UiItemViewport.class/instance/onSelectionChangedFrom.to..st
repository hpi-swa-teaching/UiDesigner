selection
onSelectionChangedFrom: oldCells to: newCells

	oldCells do: [:c | self invalidRect: (self boundsFor: c)].
	newCells do: [:c | self invalidRect: (self boundsFor: c)].

	self
		"updateFocus;" "never call here -> only on current cell change"
		selectionChanged: self selection selectedIndices.