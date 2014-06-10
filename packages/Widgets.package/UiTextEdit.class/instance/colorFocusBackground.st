accessing - colors
colorFocusBackground

	^ self colors
		at: #focusBackground
		ifAbsentPut: [(Color r: 0.0 g: 0.0 b: 0.5) muchLighter paler]