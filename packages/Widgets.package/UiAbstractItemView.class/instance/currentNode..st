selection - manual
currentNode: aNode

	| indices |
	indices := self modelIndicesFor: aNode.
	self selection currentIndex: (indices
		ifEmpty: []
		ifNotEmpty: [indices first]).