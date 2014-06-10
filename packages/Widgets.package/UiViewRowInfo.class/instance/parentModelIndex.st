accessing
parentModelIndex
	"All items in a row should have the same parent model index. So take the first item to access."
	
	^ items
		ifEmpty: [nil]
		ifNotEmpty: [self isSeparator
			ifTrue: [items first valueOfProperty: #parentModelIndex]
			ifFalse: [(items first valueOfProperty: #modelIndex) ifNotNil: [:index | index parent]]]