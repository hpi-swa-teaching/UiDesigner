cursor
tryHideCursor

	((self hideCursor
		and: [self bounds containsPoint: (self globalPointToLocal: ActiveHand position)])
		and: [ActiveHand temporaryCursor isNil])
		ifTrue: [ActiveHand showTemporaryCursor: Cursor blank].