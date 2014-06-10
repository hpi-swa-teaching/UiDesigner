collection api
detect: aBlock ifNone: exceptionBlock

	^ self
		detect: aBlock
		ifNone: exceptionBlock
		startingAt: self root
		