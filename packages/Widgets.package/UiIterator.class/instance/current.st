iterator api
current

	(iteratorPosition isNil or: [iteratorPosition = 0])
		ifTrue: [^ self root].
		
	iteratorPosition > iteratorState size
		ifTrue: [^ nil "at end"].
	
	^ iteratorState at: iteratorPosition