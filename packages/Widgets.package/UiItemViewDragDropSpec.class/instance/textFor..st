accessing - nodes
textFor: aNode

	^ (self data: textSelector for: aNode) ifNil: [aNode asString]