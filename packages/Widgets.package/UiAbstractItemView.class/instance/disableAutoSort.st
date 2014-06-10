rows/columns - sorting
disableAutoSort
	"No row sorting."
	
	self viewport rowOrder sortBlock: nil.
	self updateViewportLayout.