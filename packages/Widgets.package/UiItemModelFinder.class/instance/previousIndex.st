iterator api - private
previousIndex

	"Was resetted but not used yet?"
	iteratorPosition ifNil: [^ self rootIndex].
		
	self decrementIteratorPosition.
	
	^ self currentIndex