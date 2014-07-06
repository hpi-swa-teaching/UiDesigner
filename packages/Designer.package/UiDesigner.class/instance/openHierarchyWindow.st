windowing
openHierarchyWindow
	self hierarchyWindow: UiWidgetHierarchyWindow new. 
	self hierarchyWindow open: (self container) designer: self.