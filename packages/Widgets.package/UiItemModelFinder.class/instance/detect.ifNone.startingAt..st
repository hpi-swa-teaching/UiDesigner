collection api
detect: aBlock ifNone: exceptionBlock startingAt: aNode

	self
		do: [:index | (aBlock value: index) ifTrue: [^ index]]
		startingAt: aNode.
		
	^ exceptionBlock value