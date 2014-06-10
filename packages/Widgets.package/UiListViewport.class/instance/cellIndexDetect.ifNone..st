enumeration
cellIndexDetect: aBlock ifNone: alternative

	cellToBounds withIndexDo: [:row :rowIndex | row withIndexDo: [:cell :colIndex |
		(aBlock value: cell) ifTrue: [^ colIndex @ rowIndex]]].
	
	^ alternative value