add/remove
addIcon: anIcon text: aLabel at: anIndex

	self model
		addChild: (self createItem new text: aLabel; icon: anIcon; yourself)
		beforeIndex: anIndex
		inGroup: #items.