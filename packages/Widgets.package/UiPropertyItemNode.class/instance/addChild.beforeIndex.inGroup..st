adding
addChild: aNode beforeIndex: anIndex inGroup: aGroup

	(self children at: aGroup) add: aNode beforeIndex: anIndex.
	self childInserted: anIndex inGroup: aGroup.
	^ aNode