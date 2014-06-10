iterator api
previous

	"Was resetted but not used yet?"
	iteratorPosition ifNil: [^ self root].
		
	self decrementIteratorPosition.
	
	^ self current