rows/columns - to info
rowAtCell: aCellIndex

	^ ((cellToBounds at: aCellIndex y) at: aCellIndex x)
		ifNotNil: [:cell | cell third]