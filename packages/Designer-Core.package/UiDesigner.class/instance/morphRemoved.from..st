history
morphRemoved: aMorph from: aContainer
	((self historyActionInProgress not) and: (aMorph class ~= BorderedMorph))
	ifTrue: [
		self amendHistory.
		self actionHistory add: (UiDeleteMorphCommand newWith: aMorph in: aContainer).
		self actionHistoryIndex: self actionHistoryIndex + 1.
		self checkHistoryIndex.
			
		(aMorph class = UiContainer) ifTrue: [
			aMorph disconnectSignal: aMorph from: self selector: #morphAdded:into:. 
			aMorph disconnectSignal: #morphAdded:into: from: self selector: #morphAdded:into:. ].
			
		Transcript show: aMorph className asString, ' was removed'; cr. ].