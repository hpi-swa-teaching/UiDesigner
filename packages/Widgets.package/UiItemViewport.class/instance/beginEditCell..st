events - in-place editing
beginEditCell: aCell

	aCell ifNil: [^ self].
	^ self beginEditItem: (self morphAt: aCell)