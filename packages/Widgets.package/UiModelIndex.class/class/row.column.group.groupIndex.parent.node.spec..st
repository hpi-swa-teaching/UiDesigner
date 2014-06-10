instance creation
row: aRow column: aColumn group: aGroup groupIndex: aGroupIndex parent: aParentModelIndex node: anObject spec: aColumnSpec

	^ (self x: aColumn y: aRow)
		group: aGroup;
		groupIndex: aGroupIndex;
		parent: aParentModelIndex;
		node: anObject;
		spec: aColumnSpec