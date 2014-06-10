selection
selectionBehavior

	^ self orientation == #default
		ifTrue: [super selectionBehavior]
		ifFalse: [#selectCells]