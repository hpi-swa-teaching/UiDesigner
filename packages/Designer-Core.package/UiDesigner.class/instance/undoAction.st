history
undoAction
	| actionToBeUndone |
	
	actionToBeUndone := (self actionHistory at: (self actionHistoryIndex)) getReverseCommand.
	self actionHistoryIndex: (self actionHistoryIndex - 1).
	
	self saveExecuteCommand: actionToBeUndone.
	
	self ui undoComboBox list removeLastRow.
	self update: self ui redoComboBox with: actionToBeUndone.