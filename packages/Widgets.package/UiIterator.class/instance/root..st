accessing
root: aNode

	root = aNode ifTrue: [^ self].
	root := aNode.
	self reset.