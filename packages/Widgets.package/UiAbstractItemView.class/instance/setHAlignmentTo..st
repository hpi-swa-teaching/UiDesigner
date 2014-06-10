rows/columns - alignment
setHAlignmentTo: aSymbol
	"#left, #center, #right"

	self flag: #deprecated. "mt: Use column spec instead."	
	self viewport columns do: [:columnInfo |
		columnInfo hAlignment: aSymbol].
		
	self updateViewportLayout.