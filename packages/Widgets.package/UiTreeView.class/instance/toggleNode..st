expand/collapse
toggleNode: aNode
	"The given node has to be visible."
	
	self toggleIndex: (self modelIndicesFor: aNode) first.