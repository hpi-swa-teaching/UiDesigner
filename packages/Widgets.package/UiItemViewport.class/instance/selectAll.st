selection
selectAll

	| cells |
	cells := OrderedCollection new.
	self rowsWithIndexDo: [:rowInfo :index |
		((rowInfo visible
			and: [rowInfo isSeparator not])
			and: [rowInfo items first valueOfProperty: #selectable])
				ifTrue: [cells add: 1@index]].
	self selection cells: cells.