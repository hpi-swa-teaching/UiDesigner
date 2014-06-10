selection
selectAll

	self orientation == #default
		ifTrue: [^ super selectAll].
		
	self selection cells: (self cellIndexSelect: [:cell | cell notNil and: [
		(cell third visible
			and: [cell third isSeparator not])
			and: [cell third items first valueOfProperty: #selectable]]]).