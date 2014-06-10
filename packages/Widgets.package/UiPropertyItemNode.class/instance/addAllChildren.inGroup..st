adding
addAllChildren: someNodes inGroup: aGroup

	(self children at: aGroup) addAll: someNodes.
	
	self
		childrenInsertedFrom: (self childCountInGroup: aGroup) - someNodes size + 1
		to: (self childCountInGroup: aGroup)
		inGroup: aGroup.
		
	^ someNodes