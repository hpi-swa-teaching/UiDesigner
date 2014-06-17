attribute editing
openHierarchyWindow 
	
	self hierarchyWindow: UiWidgetHierarchyWindow new. 
	self hierarchyWindow open: (self container). 	
	
	self connect: self container signal: #selectionChanged: to: self hierarchyWindow hierarchyModel selector: #updateHierarchy.