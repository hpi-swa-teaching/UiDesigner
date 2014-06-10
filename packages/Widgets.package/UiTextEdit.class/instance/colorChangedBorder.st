accessing - colors
colorChangedBorder

	^ self colors
		at: #changedBorder
		ifAbsentPut: [Color yellow muchDarker]