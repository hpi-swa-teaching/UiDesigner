expand/collapse - model index
expandAllIndices: aModelIndex
	"Expand the given model index and all sub-indices."
	
	| nextIndices |
	self viewport beginChangeLayout.
	
	[
	self flag: #decide. "mt: Which approach to use? Allow for user interruption?"
	"breadth-first"
	self expandAllIndicesSilentlyBreadthFirst: {aModelIndex}.
	"depth-first"
	"self expandAllIndicesSilently: {aModelIndex}." 
	
	] ensure: [self viewport endChangeLayout].