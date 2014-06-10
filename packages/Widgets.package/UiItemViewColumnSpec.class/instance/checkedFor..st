accessing - nodes
checkedFor: aNode

	^ (self data: checkedSelector for: aNode) ifNil: [false]
	