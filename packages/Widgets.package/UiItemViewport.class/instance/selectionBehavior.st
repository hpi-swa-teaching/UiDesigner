selection
selectionBehavior

	^ selectionBehavior ifNil: [selectionBehavior := #selectCells]