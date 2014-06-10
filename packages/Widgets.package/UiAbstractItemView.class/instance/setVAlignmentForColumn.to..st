rows/columns - alignment
setVAlignmentForColumn: anIndex to: aSymbol
	"#top, #center, #bottom"

	self flag: #deprecated. "mt: Use column spec instead."	
	(self viewport columnAt: anIndex)
		vAlignment: aSymbol.
		
	self updateViewportLayout.