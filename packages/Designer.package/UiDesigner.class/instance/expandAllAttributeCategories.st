save/load
expandAllAttributeCategories
	(self attributeTreeModel childCount > 0) ifTrue: [ self ui attributeTreeView expandTopLevelRows: (2 to: (self attributeTreeModel childCount - 1)) ]