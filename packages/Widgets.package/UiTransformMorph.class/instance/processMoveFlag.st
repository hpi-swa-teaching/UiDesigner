drag scrolling
processMoveFlag

	self firstSubmorph ifNil: [^ self].

	(ActiveHand hasSubmorphs and: [moveFlag = #doMoveScrolling])
		ifTrue: [self updateOffsetByHand: ActiveHand]
		ifFalse: [moveFlag := #idle.
			self drawCacheActive ifFalse: [self stopStepping]].