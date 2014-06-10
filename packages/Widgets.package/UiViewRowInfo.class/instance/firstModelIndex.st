accessing
firstModelIndex
	
	^ items
		ifEmpty: [nil]
		ifNotEmpty: [(items first valueOfProperty: #modelIndex)]