model - callbacks
changeRowsFor: aParentModelIndex from: start to: end inGroup: groupName

	| index item node |
	(self viewport isExpanded: aParentModelIndex)
		ifFalse: [^ self].
		
	"node unboxing"
	node := aParentModelIndex
		ifNil: [self model]
		ifNotNil: [aParentModelIndex node].
	
	start to: end do: [:row |
		| nextChild |
		self flag: #ugly. "Reuse child nodes from present indices? How to access those nodes?"
		nextChild := node childAt: row inGroup: groupName.
		
		self columnSpecs withIndexDo: [:spec :id |
			index := UiModelIndex
				row: row
				column: id
				group: groupName
				groupIndex: (node groups indexOf: groupName)
				parent: aParentModelIndex
				node: nextChild
				spec: spec.
			self connectIndex: index.
				
			item := index item.
			self viewport replaceMorphWith: item atIndex: index.
			self isAnimated ifTrue: [item fadeIn]]].
	
	self updateViewportLayout.