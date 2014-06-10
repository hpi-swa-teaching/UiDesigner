expand/collapse - model index
collapseIndex: aModelIndex

	| row |
	(aModelIndex isNil or: [aModelIndex hasChildren not])
		ifTrue: [^ self].
	
	row := self viewport rowFor: aModelIndex.
	row isExpanded ifFalse: [^ self].
		
	row items first setProperty: #isExpanded toValue: false.
	
	self viewport beginChangeLayout.
	self viewport removeChildrenForRow: row.
	self viewport endChangeLayout.