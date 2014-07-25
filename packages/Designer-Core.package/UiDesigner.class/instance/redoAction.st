history
redoAction

	| actionToBeRedone |	
	self actionHistoryIndex: (self actionHistoryIndex + 1).
	actionToBeRedone := self actionHistory at: (self actionHistoryIndex).
	self saveExecuteCommand: actionToBeRedone.
	self ui redoComboBox list removeFirstRow.
	self update: self ui undoComboBox with: actionToBeRedone