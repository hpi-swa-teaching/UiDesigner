initialize
open: topLevelContainer
	widget hierarchyModel: (UiWidgetHierarchyModel newWithContainer: topLevelContainer).
	widget ui treeView model: widget hierarchyModel.
	widget hierarchyModel updateHierarchy: topLevelContainer.