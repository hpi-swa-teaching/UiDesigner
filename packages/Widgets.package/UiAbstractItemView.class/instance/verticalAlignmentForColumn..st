rows/columns - alignment
verticalAlignmentForColumn: anIndex

	self flag: #deprecated. "mt: Use column spec instead."		
	^ (self viewport columnAt: anIndex)
		vAlignment