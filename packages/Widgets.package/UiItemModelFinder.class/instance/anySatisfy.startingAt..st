collection api
anySatisfy: aBlock startingAt: aNode

	self
		do: [:index | (aBlock value: index) ifTrue: [^ true]]
		startingAt: aNode.
		
	^ false