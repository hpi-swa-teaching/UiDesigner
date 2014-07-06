as yet unclassified
testForInitialUndoRedoButtonDisabled
	self assert: (designer ui redoButton enabled not).
	self assert: (designer ui undoButton enabled not).