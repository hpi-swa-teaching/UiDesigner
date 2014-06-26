history
morphAdded: aMorph into: aContainer
	((self historyActionInProgress not) and: (aMorph class ~= BorderedMorph) and: (aMorph class ~= UiCustomTransferMorph))
	ifTrue: [
		self actionHistory add: (UiAddMorphCommand newWith: aMorph in: aContainer).
		
		(aMorph class = UiContainer) ifTrue: [
			self connect: aMorph signal: #morphAdded:into: to: self selector: #morphAdded:into:.
			self connect: aMorph signal: #removedMorph:from: to: self selector: #morphRemoved:from:. ].
		
		Transcript show: aMorph className asString, ' was added'; cr ].