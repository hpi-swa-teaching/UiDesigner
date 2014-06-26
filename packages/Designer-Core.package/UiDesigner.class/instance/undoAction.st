history
undoAction
	| actionToBeUndone |
	
	actionToBeUndone := self actionHistory at: (self actionHistoryIndex).
	self actionHistoryIndex: (self actionHistoryIndex - 1).
	self checkHistoryIndex.
	
	self historyActionInProgress: true.
	actionToBeUndone undo.
	self historyActionInProgress: false.