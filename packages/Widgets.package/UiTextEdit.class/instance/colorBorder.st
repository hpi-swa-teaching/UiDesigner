accessing - colors
colorBorder

	^ self colors
		at: #border
		ifAbsentPut: [Color gray: 0.3]