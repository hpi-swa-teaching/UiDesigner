accessing
hAlignment

	self flag: #deprecated. "mt: Use column spec instead."	
	self viewport ensureColumnCount: 1.
	^  self horizontalAlignmentForColumn: 1