iterator api - private
insertNextRows

	iteratorState addAll: (self sortBlock
		ifNil: [self root asOrderedCollection]
		ifNotNil: [:sb | self root sorted: sb])
	