attribute editing
toggleHierarchyWindow: aBoolean	
	aBoolean ifTrue: [ self hierarchyWindow: WidgetHierarchyWindow new. self hierarchyWindow open: (self container). ]
			  ifFalse: [ self hierarchyWindow owner delete. self hierarchyWindow: nil. ].