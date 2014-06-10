accessing - nodes
menuFor: aNode

	^ [self data: menuSelector for: aNode]
		on: MessageNotUnderstood
		do: ["Allow only some nodes to implement a menuSelector. This DNU is not expensive."]

	