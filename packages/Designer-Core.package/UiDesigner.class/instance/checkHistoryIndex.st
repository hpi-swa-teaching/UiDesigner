history
checkHistoryIndex
	self ui undoButton enabled: (self actionHistoryIndex >= 1).
	self ui redoButton enabled: (self actionHistoryIndex < self actionHistory size).