model - initialization
fillViewportFor: aModelIndex animated: aBoolean

	| index item groupItem newRows node |
	"Node unboxing"
	node := aModelIndex
		ifNil: [self model "root addressed"]
		ifNotNil: [aModelIndex node].
	
	"Create row-specific data as nested array:
	group -> row -> column -> model index -> item/morph."
	newRows := node groups withIndexCollect: [:group :groupIndex |
		groupItem := self groupSpec itemFor: node groupIndex: groupIndex isTopLevel: aModelIndex isNil.
		groupItem
			setProperty: #isGroupSeparator toValue: true;
			setProperty: #indent toValue: 0;
			setProperty: #hasChildren toValue: false;
			setProperty: #parentModelIndex toValue: aModelIndex;
			setProperty: #groupIndex toValue: groupIndex.
		
		groupItem -> (
		(1 to: (node childCountInGroup: group)) collect: [:row |
			| nextChild |
			"share instance of next child among all columns in one row"
			nextChild := node childAt: row inGroup: group.

			self columnSpecs withIndexCollect: [:spec :id |
				"Node boxing"
				index := UiModelIndex
					row: row
					column: id
					group: group
					groupIndex: groupIndex
					parent: aModelIndex
					node: nextChild
					spec: spec.
				self connectIndex: index.

				item := index item.
				aBoolean ifTrue: [item fadeIn].
				index -> item]])].
	
	newRows ifEmpty: [^ #()].
	
	aModelIndex
		ifNil: [self viewport appendItemRows: newRows] "top-level"
		ifNotNil: [self viewport insertItemRows: newRows].
		
	^ newRows