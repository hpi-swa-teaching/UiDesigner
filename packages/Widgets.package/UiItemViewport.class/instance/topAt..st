geometry - cached
topAt: aCell

	^ ((cellToBounds at: aCell y) at: aCell x)
		ifNil: ["hidden cell" 0]
		ifNotNil: [:d | d first y]