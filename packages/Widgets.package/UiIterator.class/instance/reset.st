iterator api
reset

	process ifNotNil: [
		process terminate.
		self hasFinished ifFalse: [self cancelled].
		process := nil].


	iteratorState := (self sortBlock
		ifNil: [self root asOrderedCollection]
		ifNotNil: [:sb | self root sorted: sb]).
	
	iteratorPosition := nil.
	iteratorShadow := nil.
