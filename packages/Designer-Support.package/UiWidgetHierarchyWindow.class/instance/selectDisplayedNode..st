slots
selectDisplayedNode: aNode

	|selectedNodeIndex|
	self ui treeView expandAllNodes.
	selectedNodeIndex := (self ui treeView modelIndicesFor: self hierarchyModel selectedNode)first 							parent.
	self ui treeView toggleAllTopLevelNodes.
	self ui treeView expandIndex: selectedNodeIndex.
	
	self ui treeView selectedNodes: { aNode }.