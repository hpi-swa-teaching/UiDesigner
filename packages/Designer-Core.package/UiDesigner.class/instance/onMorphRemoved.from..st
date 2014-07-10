history
onMorphRemoved: aMorph from: aContainer
	| currentCommand |
	((self historyActionInProgress not) and: (aMorph class ~= BorderedMorph))
	ifTrue: [
		currentCommand :=  UiAddMorphCommand newWith: aMorph in: aContainer.
		self addCommand: currentCommand.
			
		(aMorph class = UiContainer) 
			ifTrue: [self disconnectContainerFromHistory: aMorph. ].
		self update: self ui undoComboBox with: currentCommand.].