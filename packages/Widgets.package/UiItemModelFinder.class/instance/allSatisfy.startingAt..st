collection api
allSatisfy: aBlock startingAt: aNode

	self
		do: [:index | (aBlock value: index) ifFalse: [^ false]]
		startingAt: aNode.
		
	^ true