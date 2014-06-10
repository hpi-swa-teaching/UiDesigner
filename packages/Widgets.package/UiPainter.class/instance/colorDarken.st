colors
colorDarken

	^ self morph
		valueOfProperty: #colorDarken
		ifAbsentPut: [Color black]