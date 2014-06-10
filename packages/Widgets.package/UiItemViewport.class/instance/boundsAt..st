geometry - cached
boundsAt: aCell

	| boundsData |
	boundsData := (cellToBounds at: aCell y) at: aCell x.
	^ boundsData
		ifNil: ["hidden cell" 0@0 extent: 0@0]
		ifNotNil: [:d | d first extent: boundsData second]