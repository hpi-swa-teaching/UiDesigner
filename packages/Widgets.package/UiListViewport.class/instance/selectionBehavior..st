selection
selectionBehavior: aSymbol

	self orientation == #default
		ifTrue: [^ super selectionBehavior: aSymbol].
		
	aSymbol ~~ self selectionBehavior
		ifTrue: [Error signal: 'Selection behavior is not configurable for lists.'].