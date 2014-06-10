accessing - nodes
selectableFor: aNode

	^ (self data: selectableSelector for: aNode) ifNil: [true]
	