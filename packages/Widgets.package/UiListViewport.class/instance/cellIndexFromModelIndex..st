rows/columns - to cell
cellIndexFromModelIndex: aModelIndex

	self orientation == #default
		ifTrue: [^ super cellIndexFromModelIndex: aModelIndex].
		
	aModelIndex ifNil: [^ nil].

	^ self cellIndexDetect: [:cell | cell notNil and: [cell third "row info" firstModelIndex = aModelIndex]]