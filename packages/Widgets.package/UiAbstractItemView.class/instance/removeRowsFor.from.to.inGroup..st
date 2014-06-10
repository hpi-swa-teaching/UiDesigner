model - callbacks
removeRowsFor: aParentModelIndex from: start to: end inGroup: groupName

	| index node |
	(self viewport isExpanded: aParentModelIndex)
		ifFalse: [^ self].
	
	start to: end do: [:row |
		self viewport removeRowFor: aParentModelIndex at: row inGroup: groupName].
	
	"node unboxing"
	node := aParentModelIndex
		ifNil: [self model]
		ifNotNil: [aParentModelIndex node].
	
	"Update trailing model indices."
	start to: (node childCountInGroup: groupName) do: [:row |
		| nextChild |
		self flag: #ugly. "Reuse child nodes from trailing indices? How to access those nodes?"
		nextChild := node childAt: row inGroup: groupName.
		
		self columnSpecs withIndexDo: [:spec :id | | oldIndex |
			index := UiModelIndex
				row: row column: id group: groupName
				groupIndex: (node groups indexOf: groupName)
				parent: aParentModelIndex
				node: nextChild
				spec: spec.
			oldIndex := UiModelIndex
				row: row + 1 + (end - start)
				column: id
				group: groupName
				groupIndex: (node groups indexOf: groupName)
				parent: aParentModelIndex
				node: nil
				spec: spec.
			
			self connectIndex: index.
			self viewport updateIndex: index oldIndex: oldIndex]].
	
	self updateViewportLayout.