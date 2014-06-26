as yet unclassified
morphAdded: aMorph into: aContainer
	((self historyActionInProgress not) and: (aMorph class ~= BorderedMorph))
		ifTrue: [self actionHistory add: (UiAddMorphCommand newWith: aMorph in: aContainer).
			Transcript show: aMorph className asString, ' was added'; cr].