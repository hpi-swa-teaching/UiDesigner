model - to index
rowIndexFor: aNode
	
	self viewport rowsWithIndexDo: [:row :rowIndex |
		"Model index in a row can be nil for group separators."
		row firstModelIndex ifNotNil: [:index |
			index node = aNode ifTrue: [^ rowIndex]]].
	
	^ nil