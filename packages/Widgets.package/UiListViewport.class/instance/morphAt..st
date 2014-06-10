rows/columns - to morph
morphAt: aCellIndex

	self orientation == #default
		ifTrue: [^ super morphAt: aCellIndex].

	aCellIndex ifNil: [^ nil].
	
	^ (self rowAtCell: aCellIndex) ifNotNil: [:rowInfo | rowInfo items first]