as yet unclassified
rowCountFor: aParentModelIndex

	^ aParentModelIndex
		ifNil: [data size]
		ifNotNil: [(aParentModelIndex valueOfProperty: #data) value size]