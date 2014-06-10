model - callbacks
changeRowFor: aModelIndex

	"Check if node is visible."
	(self viewport isExpanded: aModelIndex parent)
		ifFalse: [^ self].
	
	self columnSpecs withIndexDo: [:spec :id |
		| item index |
		index := UiModelIndex
			row: aModelIndex row
			column: id
			group: aModelIndex group
			groupIndex: aModelIndex groupIndex
			parent: aModelIndex parent
			node: aModelIndex node
			spec: spec.
		self connectIndex: index.
				
		item := index item.
		self viewport replaceMorphWith: item atIndex: index.
		self isAnimated ifTrue: [item fadeIn]].
	
	self
		updateViewportLayout;
		changed: aModelIndex node.