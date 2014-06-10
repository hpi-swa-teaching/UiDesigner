accessing
hAlignment: aSymbol

	self flag: #deprecated. "mt: Use column spec instead."	
	self viewport ensureColumnCount: 1.
	self setHAlignmentForColumn: 1 to: aSymbol.