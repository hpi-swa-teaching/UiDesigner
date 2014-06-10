drawing
visibleRowsIndices: aCanvas

	^ (self topMostVisibleCellIndex: aCanvas)
		to: (self bottomMostVisibleCellIndex: aCanvas)