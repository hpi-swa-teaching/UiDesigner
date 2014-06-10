enumeration
cellIndexSelect: aBlock

	| result |
	result := OrderedCollection new.
	cellToBounds withIndexDo: [:row :rowIndex | row withIndexDo: [:cell :colIndex |
		(aBlock value: cell) ifTrue: [result add: colIndex @ rowIndex]]].
	^ result