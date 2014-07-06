history
redoAction
	| actionToBeRedone |
	
	self actionHistoryIndex: (self actionHistoryIndex + 1).
	actionToBeRedone := self actionHistory at: (self actionHistoryIndex).
	self checkHistoryIndex.
	
	self historyActionInProgress: true.
	actionToBeRedone execute.
	self historyActionInProgress: false.