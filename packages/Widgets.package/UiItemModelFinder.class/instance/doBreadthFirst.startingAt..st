collection api - private
doBreadthFirst: aBlock startingAt: aNode
	"Breadth-first search."
	
	| nextChildren |
	nextChildren := (self childNodesFor: aNode) asOrderedCollection.
		
	[nextChildren notEmpty] whileTrue: [
		| nextChild |
		nextChild := nextChildren removeFirst.
		nextChildren addAll: (self childNodesFor: nextChild).
		aBlock value: nextChild].