collection api - private
doDepthFirst: aBlock startingAt: aNode
	"Depth-search."

	| nextChildren |
	nextChildren := (self childNodesFor: aNode) asOrderedCollection.
		
	[nextChildren notEmpty] whileTrue: [
		| nextChild |
		nextChild := nextChildren removeFirst.
		nextChildren addAllFirst: (self childNodesFor: nextChild).
		aBlock value: nextChild].