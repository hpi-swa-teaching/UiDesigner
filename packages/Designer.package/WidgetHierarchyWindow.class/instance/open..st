initialization
open: topLevelContainer
	self hierarchyModel: (UiWidgetHierarchyModel newWithContainer: topLevelContainer).
	self ui treeView model: self hierarchyModel.
	self hierarchyModel updateHierarchy.
	
  	self openInWindowLabeled: 'WidgetHierarchyWindow'