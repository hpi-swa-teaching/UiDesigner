accessing - colors
colorHighlightedBorder

	^ self colors
		at: #colorHighlightedBorder
		ifAbsentPut: [Color orange muchDarker]