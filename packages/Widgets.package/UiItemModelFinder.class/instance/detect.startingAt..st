collection api
detect: aBlock startingAt: aNode

	^ self
		detect: aBlock
		ifNone: [Error signal: 'Object is not in the collection.']
		startingAt: aNode