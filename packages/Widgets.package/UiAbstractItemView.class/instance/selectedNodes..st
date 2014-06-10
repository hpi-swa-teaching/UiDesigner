selection - manual
selectedNodes: someNodes

	(self selectedNodes size = someNodes size
		and: [self selectedNodes includesAllOf: someNodes])
			ifTrue: [^ self].

	^ self selection selectedIndices: (
		someNodes
			inject: OrderedCollection new
			into: [:indices :node | indices, (self modelIndicesFor: node)])