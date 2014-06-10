accessing - colors
colorFocusBorder

	^ self colors
		at: #focusBorder
		ifAbsentPut: [(Color r: 0.5 g: 0.5 b: 1.0) muchDarker]