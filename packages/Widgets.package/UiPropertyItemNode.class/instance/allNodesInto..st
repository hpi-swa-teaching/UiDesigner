as yet unclassified
allNodesInto: result

	result
		add: self
		ifPresent: [^ result "avoid cycles"].
	
	self children collect: [:nodes |
		nodes do: [:node |
			node allNodesInto: result]].
	
	^ result