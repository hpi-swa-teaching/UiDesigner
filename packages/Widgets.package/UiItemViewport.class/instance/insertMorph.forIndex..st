add/remove - inserting
insertMorph: aMorph forIndex: aModelIndex

	| col row |
	aMorph setProperty: #modelIndex toValue: aModelIndex.
	aMorph setProperty: #isExpanded toValue: false.
	aMorph setProperty: #hasChildren toValue: aModelIndex hasChildren.
	
	row := self ensureRowFor: aModelIndex.
	row items add: aMorph.
	
	col := self columnFor: aModelIndex.
	col items add: aMorph beforeIndex: (rows indexOf: row).
	
	self addMorphBack: aMorph.
	
	aMorph
		setProperty: #indent
		toValue: (self calculateIndentFor: aMorph atIndex: aModelIndex column: col).