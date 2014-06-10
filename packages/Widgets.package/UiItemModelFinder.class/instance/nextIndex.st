iterator api - private
nextIndex

	"Already at end?"
	(iteratorPosition notNil and: [self currentIndex isNil])
		ifTrue: [^ self currentIndex "nil"].

	"Initialize after #reset."
	iteratorState ifNil: [iteratorState := OrderedCollection new].
	iteratorPosition ifNil: [iteratorPosition := 0].
	iteratorShadow ifNil: [iteratorShadow := 0].

	"Append new rows if necessary."
	iteratorPosition = iteratorShadow
		ifTrue: [self insertNextRows].
	
	self incrementIteratorPosition.
	
	^ self currentIndex