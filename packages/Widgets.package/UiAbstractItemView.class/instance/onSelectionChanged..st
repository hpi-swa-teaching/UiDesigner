signals - unboxing
onSelectionChanged: someModelIndices

	self selectionChanged: (someModelIndices collect: [:index | index node]).