adding
addGroup: aGroup

	(self children includesKey: aGroup)
		ifTrue: [^ self].
		  
	self groups add: aGroup.
	self children at: aGroup put: OrderedCollection new.
	
	self modelReset.