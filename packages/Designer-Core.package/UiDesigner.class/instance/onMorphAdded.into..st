history
onMorphAdded: aMorph into: aContainer
	| currentCommand |
	((self historyActionInProgress not) and: (aMorph class ~= BorderedMorph) 
		and: (aMorph class ~= UiCustomTransferMorph))
	ifTrue: [ currentCommand := (UiAddMorphCommand newWith: aMorph in: aContainer).
			self addCommand: currentCommand.
			(aMorph class = UiContainer) ifTrue: 
				[self connectContainerToHistory: aMorph.].
			self update: self ui undoComboBox with: currentCommand]
	.