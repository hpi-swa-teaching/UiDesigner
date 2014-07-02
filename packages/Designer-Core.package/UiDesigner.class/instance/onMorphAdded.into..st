history
onMorphAdded: aMorph into: aContainer
	((self historyActionInProgress not) and: (aMorph class ~= BorderedMorph) and: (aMorph class ~= UiCustomTransferMorph))
	ifTrue: [
		self amendHistory.
		self actionHistory add: (UiAddMorphCommand newWith: aMorph in: aContainer).
		self actionHistoryIndex: self actionHistoryIndex + 1.
		self checkHistoryIndex.
		
		(aMorph class = UiContainer) ifTrue: [
			self connectContainerToHistory: aMorph.]].