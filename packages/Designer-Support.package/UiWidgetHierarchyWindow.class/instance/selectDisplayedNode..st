accessing
selectDisplayedNode: aNode
	self ui treeView expandAllNodes.
	Debugger halt.
	self ui treeView selectedNodes: { aNode }.
