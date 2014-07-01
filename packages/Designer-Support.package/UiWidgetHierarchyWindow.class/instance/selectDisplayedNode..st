accessing
selectDisplayedNode: aNode
	self ui treeView expandAllNodes.
	self ui treeView selectedNodes: { aNode }.
