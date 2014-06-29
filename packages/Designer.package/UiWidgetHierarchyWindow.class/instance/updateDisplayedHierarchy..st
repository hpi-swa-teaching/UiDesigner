accessing
updateDisplayedHierarchy: aWidget
	self hierarchyModel updateHierarchy: aWidget.
	self ui treeView expandAllNodes.
