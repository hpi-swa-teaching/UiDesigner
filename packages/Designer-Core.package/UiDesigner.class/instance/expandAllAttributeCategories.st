initialization
expandAllAttributeCategories
 "irregular signal chaining forces us to put the category expansion behind the model updating process using this timeout"
	Delay forMilliseconds: 600.
	self ui attributeTreeView expandTopLevelRows: (1 to: self attributeTreeModel childCount).