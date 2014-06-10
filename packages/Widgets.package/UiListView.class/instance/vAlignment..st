accessing
vAlignment: aSymbol

	self flag: #deprecated. "mt: Use column spec instead."	
	self viewport ensureColumnCount: 1.
	self setVAlignmentForColumn: 1 to: aSymbol.