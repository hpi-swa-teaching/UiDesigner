iterator api
current

	(iteratorPosition isNil or: [iteratorPosition = 0])
		ifTrue: [^ self root].

	^ self currentIndex ifNotNil: [:index | index node]