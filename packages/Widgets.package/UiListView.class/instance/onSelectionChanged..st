signals -unboxing
onSelectionChanged: someModelIndices

	super onSelectionChanged: someModelIndices.
	self selectedRowsChanged: (someModelIndices collect: [:i | i row]).