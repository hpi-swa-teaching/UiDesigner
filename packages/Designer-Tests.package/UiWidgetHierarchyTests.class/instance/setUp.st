initialize
setUp 

	super setUp.
	widget := UiWidgetHierarchyWindow new.
	widget initializeTreeView.
	child1 := UiPushButton new.
	child2 := UiLabel new.
	topLevelContainer := UiContainer new.
	topLevelContainer
		addChild: child1;
		addChild: child2.
	self open: topLevelContainer.
		
	