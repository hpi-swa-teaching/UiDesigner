removing
removeChildAt: anIndex inGroup: aGroup

	| removedNode |
	removedNode := (self children at: aGroup) removeAt: anIndex.
	self childRemoved: anIndex inGroup: aGroup.
	^ removedNode