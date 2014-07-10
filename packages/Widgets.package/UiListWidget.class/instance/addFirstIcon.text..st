add/remove
addFirstIcon: anIcon text: aLabel

	self model
		addChild: (self createItem text: aLabel; icon: anIcon; yourself) beforeIndex: 1
		inGroup: #items.
	
