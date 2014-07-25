initialization
newWith: aMorph in: aContainer

	^ self new
		relevantMorph: aMorph;
		morphContainer: aContainer