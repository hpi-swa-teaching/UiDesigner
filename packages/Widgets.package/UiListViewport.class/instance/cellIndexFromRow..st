rows/columns - to cell
cellIndexFromRow: aRowInfo

	self orientation == #default
		ifTrue: [^ super cellIndexFromRow: aRowInfo].
		
	^ self cellIndexFromModelIndex: aRowInfo firstModelIndex  