colors
colorLighten

	^ self morph
		valueOfProperty: #colorLighten
		ifAbsentPut: [Color white]