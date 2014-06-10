rows/columns - to model index
modelIndexFor: aCellIndex

	self orientation = #default
		ifTrue: [^ super modelIndexFor: aCellIndex].

	aCellIndex ifNil: [^ nil].
	
	^ (self rowAtCell: aCellIndex) ifNotNil: [:rowInfo | rowInfo firstModelIndex]