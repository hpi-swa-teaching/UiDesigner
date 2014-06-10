rows/columns - to pixel
cellBoundsFor: aCellIndex

	(cellToBounds at: aCellIndex y ifAbsent: [^ 0@0 extent: 0@0])
		ifNil: [^ 0@0 extent: 0@0]
		ifNotNil: [:rowBounds | (rowBounds at: aCellIndex x ifAbsent: [^ 0@0 extent: 0@0])
			ifNil: [^ 0@0 extent: 0@0]
			ifNotNil: [:data | ^ data first extent: data second]].