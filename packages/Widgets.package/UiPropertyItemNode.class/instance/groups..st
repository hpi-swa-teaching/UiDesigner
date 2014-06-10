item model - hierarchy
groups: someGroups
	
	groups := someGroups asOrderedCollection.
	
	self children removeAll.
	someGroups do: [:group | self children at: group put: OrderedCollection new].
	
	self modelReset.