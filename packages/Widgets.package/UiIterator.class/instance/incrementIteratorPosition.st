iterator api - private
incrementIteratorPosition

	iteratorPosition := iteratorPosition + 1 min: iteratorState size + 1.
	
	iteratorShadow < iteratorPosition
		ifTrue: [iteratorShadow := iteratorPosition].