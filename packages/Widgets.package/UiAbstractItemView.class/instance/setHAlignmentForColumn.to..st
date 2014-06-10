rows/columns - alignment
setHAlignmentForColumn: anIndex to: aSymbol
	"#left, #center, #right"
	
	self flag: #deprecated. "mt: Use column spec instead."
	(self viewport columnAt: anIndex)
		hAlignment: aSymbol.
		
	self updateViewportLayout.