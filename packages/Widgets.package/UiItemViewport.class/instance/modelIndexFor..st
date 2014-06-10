rows/columns - to model index
modelIndexFor: aCellIndex

	aCellIndex ifNil: [^ nil].
	aCellIndex y > self rowCount ifTrue: [^ nil].
	aCellIndex x > self columnCount ifTrue: [^ nil].
	
	^ (self rowOrder items: (self columnAt: aCellIndex x) items at: aCellIndex y)
		valueOfProperty: #modelIndex