accessing - colors
colorBackground

	^ self colors
		at: #background
		ifAbsentPut: [Color white]