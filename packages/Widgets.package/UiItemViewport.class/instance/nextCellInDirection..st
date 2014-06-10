events
nextCellInDirection: aSymbol

	^ self selection currentCell
		ifNil: [self rowCount < 2
			ifTrue: []
			ifFalse: [1@2 "skip separator"]]
		ifNotNil: [:cc | self nextCellFor: cc direction: aSymbol]