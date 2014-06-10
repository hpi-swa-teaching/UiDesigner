initialization
initialize

	super initialize.
	
	rowOrder := UiTreeItemOrder new.
	
	self selectionBehavior: #selectRows.