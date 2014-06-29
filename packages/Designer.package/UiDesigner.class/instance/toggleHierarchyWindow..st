accessing
toggleHierarchyWindow: aBoolean	
	aBoolean 
		ifTrue: [ self openHierarchyWindow.]
		ifFalse: [ self hierarchyWindow owner delete. self hierarchyWindow: nil.]