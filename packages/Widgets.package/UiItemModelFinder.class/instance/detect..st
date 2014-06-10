collection api
detect: aBlock

	^ self
		detect: aBlock
		ifNone: [Error signal: 'Object is not in the collection.']