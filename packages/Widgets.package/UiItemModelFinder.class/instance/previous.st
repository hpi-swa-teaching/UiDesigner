iterator api
previous

	^ self previousIndex
		ifNil: [self root "the beginning"]
		ifNotNil: [:index | index node]