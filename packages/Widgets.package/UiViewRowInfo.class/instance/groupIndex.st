accessing
groupIndex
	
	self flag: #inconsistent. "mt: Why is the group index not cached in the item of a non-separator?"
	^ self isSeparator
		ifTrue: [items first valueOfProperty: #groupIndex]
		ifFalse: [self firstModelIndex groupIndex]