rows/columns - alignment
horizontalAlignmentForColumn: anIndex

	self flag: #deprecated. "mt: Use column spec instead."
	^ (self viewport columnAt: anIndex)
		hAlignment