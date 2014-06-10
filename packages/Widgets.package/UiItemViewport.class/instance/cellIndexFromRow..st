rows/columns - to cell
cellIndexFromRow: aRowInfo

	^ self cellIndexAt: 1 @ (rows indexOf: aRowInfo)