rows/columns - to pixel
boundsFor: aCellIndex
	"Returns the relevant bounds for a given cell index based on the current selection behavior."

	self orientation == #default
		ifTrue: [^ super boundsFor: aCellIndex].
	
	aCellIndex ifNil: [^ 0@0 extent: 0@0].

	self assert: self selectionBehavior == #selectCells.

	^ self cellBoundsFor: aCellIndex