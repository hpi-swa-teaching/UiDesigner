accessing - nodes
editableFor: aNode

	^ (self data: editableSelector for: aNode) ifNil: [false]
	