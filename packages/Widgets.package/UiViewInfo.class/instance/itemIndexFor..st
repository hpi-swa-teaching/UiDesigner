items query
itemIndexFor: aModelIndex

	items withIndexDo: [:item :index |
		(item valueOfProperty: #modelIndex) = aModelIndex
			ifTrue: [^ index]].
	
	Error signal: 'Not found.'.