initialization
open: topLevelContainer
	self hierarchyModel: (UiWidgetHierarchyModel newWithContainer: topLevelContainer).
	self ui treeView model: self hierarchyModel.
	self hierarchyModel updateHierarchy.
	
	self connect: topLevelContainer signal: #selectionChanged: to: (self hierarchyModel) selector: #updateHierarchy.
	
  	self openInWindowLabeled: 'Widget Hierarchy'