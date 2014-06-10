rows/columns - to pixel
columnBoundsFor: aColumnInfo

	aColumnInfo visible
		ifFalse: [^ 0@0 extent: 0@0].
	
	^ (self leftForColumn: aColumnInfo) @ self top
		extent: aColumnInfo width @ self height