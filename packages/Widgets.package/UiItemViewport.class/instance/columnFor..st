rows/columns - to info
columnFor: aModelIndex

	^ columns
		at: aModelIndex column
		ifAbsentPut: [UiViewColumnInfo new]