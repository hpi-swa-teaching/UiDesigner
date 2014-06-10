testing
isRowFor: aModelIndex

	^ self firstModelIndex
		ifNil: [false "separator"]
		ifNotNil: [:index | index row = aModelIndex row]