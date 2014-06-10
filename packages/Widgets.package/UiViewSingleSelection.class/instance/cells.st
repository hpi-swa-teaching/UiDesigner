accessing
cells

	^ selectedCell
		ifNil: [#()]
		ifNotNil: [{selectedCell}]