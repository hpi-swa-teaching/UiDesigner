rows/columns - sorting
autoSortBlock: aBlock
	"Specify the way rows will be sorted"
	
	self viewport rowOrder sortBlock: aBlock.
	self updateViewportLayout.