rows/columns - to pixel
boundsFor: aCellIndex
	"Returns the relevant bounds for a given cell index based on the current selection behavior."

	aCellIndex ifNil: [^ 0@0 extent: 0@0].

	^ self selectionBehavior == #selectCells
		ifTrue: [self cellBoundsFor: aCellIndex]
		ifFalse: [self selectionBehavior == #selectRows
			ifTrue: [self rowBoundsAt: aCellIndex y]
			ifFalse: [self selectionBehavior == #selectColumns
				ifTrue: [self columnBoundsAt: aCellIndex x]
				ifFalse: [0@0 extent: 0@0]]]