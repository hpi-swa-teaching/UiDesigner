rows/columns - to cell
cellIndexFromColumn: aColumnInfo

	^ self cellIndexAt: (columns indexOf: aColumnInfo) @ 1