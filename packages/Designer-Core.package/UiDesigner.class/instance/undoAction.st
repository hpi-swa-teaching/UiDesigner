history
undoAction
	| actionToBeUndone peter |
	
	actionToBeUndone := self actionHistory at: (self actionHistoryIndex).
	self actionHistoryIndex: (self actionHistoryIndex - 1).
	self checkHistoryIndex.
	
	self historyActionInProgress: true.
	actionToBeUndone undo.
	self historyActionInProgress: false.
	
	self ui undoComboBox list removeLastRow.
	self update: self ui redoComboBox with: actionToBeUndone.