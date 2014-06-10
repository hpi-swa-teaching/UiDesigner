iterator api - private
currentIndex

	(iteratorPosition isNil or: [iteratorPosition = 0])
		ifTrue: [^ self rootIndex].
		
	iteratorPosition > iteratorState size
		ifTrue: [^ nil "at end"].
	
	^ iteratorState at: iteratorPosition