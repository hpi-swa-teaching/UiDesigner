accessing
node: aNode

	node := aNode.
	aNode ifNotNil: [self connectNode].