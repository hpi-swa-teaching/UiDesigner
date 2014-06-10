add/remove
replaceMorphWith: aMorph atIndex: aModelIndex

	| oldMorph col row |
	oldMorph := (rows detect: [:rowInfo | rowInfo includes: aModelIndex] ifNone: [^ self]) itemAt: aModelIndex.
		
	aMorph setProperty: #modelIndex toValue: aModelIndex.
	aMorph setProperty: #isExpanded toValue: (oldMorph valueOfProperty: #isExpanded).
	aMorph setProperty: #hasChildren toValue: aModelIndex hasChildren.
	
	row := self rowFor: aModelIndex.
	row items
		add: aMorph after: oldMorph;
		remove: oldMorph.
	
	col := self columnFor: aModelIndex.
	col items
		add: aMorph after: oldMorph;
		remove: oldMorph.
	
	self
		removeMorph: oldMorph;
		addMorphBack: aMorph.
	
	aMorph
		setProperty: #indent
		toValue: (self
			calculateIndentFor: aMorph
			atIndex: aModelIndex
			column: col).