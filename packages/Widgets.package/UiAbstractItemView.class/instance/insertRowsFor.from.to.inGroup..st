model - callbacks
insertRowsFor: aParentModelIndex from: start to: end inGroup: groupName

	| index item isTopLevelAppending node |
	end < start ifTrue: [^ self].
	
	(self viewport isExpanded: aParentModelIndex)
		ifFalse: [^ self].
		
	"Node unboxing."
	node := aParentModelIndex
		ifNil: [self model]
		ifNotNil: [aParentModelIndex node].

	"Update trailing model indices."
	end + 1 to: (node childCountInGroup: groupName) do: [:row |
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
				row: row - 1 - (end - start)
				column: id
				group: groupName
				groupIndex: (node groups indexOf: groupName)
				parent: aParentModelIndex
				node: nil
				spec: spec.
			
			self connectIndex: index.
			self viewport updateIndex: index oldIndex: oldIndex]].

	"Insert new rows."
	isTopLevelAppending := (groupName = node groups last
		and: [aParentModelIndex isNil])
		and: [(node childCountInGroup: groupName) == start].
	
	start to: end do: [:row |
		| nextChild |
		nextChild := node childAt: row inGroup: groupName.
		
		self columnSpecs withIndexDo: [:spec :id |
			index := UiModelIndex
				row: row column: id group: groupName
				groupIndex: (node groups indexOf: groupName)
				parent: aParentModelIndex
				node: nextChild
				spec: spec.
			self connectIndex: index.

			item := index item.
			isTopLevelAppending
				ifTrue: [self viewport appendMorph: item forIndex: index]
				ifFalse: [self viewport insertMorph: item forIndex: index].
			self isAnimated ifTrue: [item fadeIn]]].
		
	self updateViewportLayout.