accessing
indent
	
	^ items
		ifEmpty: [0]
		ifNotEmpty: [(items first valueOfProperty: #indent ifAbsent: [0])]