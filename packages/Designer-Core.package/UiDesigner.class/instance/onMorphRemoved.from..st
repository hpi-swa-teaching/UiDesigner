history
onMorphRemoved: aMorph from: aContainer
	| currentCommand |
	((self historyActionInProgress not) and: (aMorph class ~= BorderedMorph))
	ifTrue: [
		self amendHistory.
		currentCommand :=  UiDeleteMorphCommand newWith: aMorph in: aContainer.
		self actionHistory add: currentCommand.
		self actionHistoryIndex: self actionHistoryIndex + 1.
		self checkHistoryIndex.
			
		(aMorph class = UiContainer) 
			ifTrue: [self disconnectContainerFromHistory: aMorph. ].
		self update: self ui undoComboBox with: currentCommand.].