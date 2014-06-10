iterator api
next

	"Already at end?"
	(iteratorPosition notNil and: [self current isNil])
		ifTrue: [^ self current "nil"].

	"Initialize after #reset."
	iteratorPosition ifNil: [iteratorPosition := 0].
	iteratorShadow ifNil: [iteratorShadow := 0].
	
	self incrementIteratorPosition.
	
	^ self current