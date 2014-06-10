collection api
do: aBlock startingAt: aNode
	"Startng index WILL NOT be evaluated."
	
	self traversalMode == #depthFirst
		ifTrue: [self doDepthFirst: aBlock startingAt: aNode].
	self traversalMode == #breadthFirst
		ifTrue: [self doBreadthFirst: aBlock startingAt: aNode].