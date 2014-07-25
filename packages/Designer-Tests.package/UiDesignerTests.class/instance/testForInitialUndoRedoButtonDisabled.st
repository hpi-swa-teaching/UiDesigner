testing
testForInitialUndoRedoButtonDisabled
	self assert: (sut ui redoButton enabled not).
	self assert: (sut ui undoButton enabled not).