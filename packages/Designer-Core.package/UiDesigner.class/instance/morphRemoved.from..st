as yet unclassified
morphRemoved: aMorph from: aContainer
	((self historyActionInProgress not) and: (aMorph class ~= BorderedMorph))
		ifTrue: [self actionHistory add: (UiDeleteMorphCommand newWith: aMorph in: aContainer).
			Transcript show: aMorph className asString, ' was removed'; cr.].