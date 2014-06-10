rows/columns - to cell
cellIndexFromColumn: aColumnInfo

	self orientation == #default
		ifTrue: [^ super cellIndexFromColumn: aColumnInfo].
	
	^ 1@1