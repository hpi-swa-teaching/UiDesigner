collection api
count: aBlock startingAt: aNode

	| sum |
	sum := 0.
	self
		do: [:each | (aBlock value: each) ifTrue: [sum := sum + 1]]
		startingAt: aNode.
	^ sum