add/remove
addIcon: anIcon text: aLabel

	self model
		addChild: (self createItem text: aLabel; icon: anIcon; yourself)
		inGroup: #items.
	
