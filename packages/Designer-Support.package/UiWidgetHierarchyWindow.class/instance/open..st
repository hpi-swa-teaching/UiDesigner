initialization
open: topLevelContainer
	self hierarchyModel: (UiWidgetHierarchyModel newWithContainer: topLevelContainer).
	self ui treeView model: self hierarchyModel.
	self hierarchyModel updateHierarchy: topLevelContainer.
	
	self connect: topLevelContainer signal: #selectionChanged: to: self selector: #updateDisplayedHierarchy:.
	self connect: (self hierarchyModel) signal: #publishSelectedNode: to: self selector: #selectDisplayedNode:.
	
  	self openInWindowLabeled: 'Widget Hierarchy'