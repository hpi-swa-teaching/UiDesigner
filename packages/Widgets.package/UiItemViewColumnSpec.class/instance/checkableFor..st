accessing - nodes
checkableFor: aNode

	^ ((self data: checkableSelector for: aNode) ifNil: [false])
		and: [self checkedSelector notNil]
	