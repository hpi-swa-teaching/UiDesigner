dictionary
removeKey: key ifAbsent: aBlock

	| result wasRemoved |
	wasRemoved := true.
	self properties remove: key ifAbsent: [wasRemoved := false].
	
	result := super removeKey: key ifAbsent: aBlock.
	wasRemoved ifTrue: [self propertyChanged: key].
	^ result