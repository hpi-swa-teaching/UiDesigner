rows/columns - alignment
setVAlignmentTo: aSymbol
	"#top, #center, #bottom"

	self flag: #deprecated. "mt: Use column spec instead."		
	self viewport columns do: [:columnInfo |
		columnInfo vAlignment: aSymbol].
		
	self updateViewportLayout.