removing
removeGroup: aGroup

	self groups remove: aGroup.
	self children removeKey: aGroup.
	
	self modelReset.