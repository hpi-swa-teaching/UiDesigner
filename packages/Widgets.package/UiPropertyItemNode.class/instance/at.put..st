dictionary
at: aProperty put: anObject

	| result wasChanged |
	(self properties includes: aProperty)
		ifFalse: [self properties add: aProperty].
	
	wasChanged := (self at: aProperty ifAbsent: []) ~= anObject.
	
	result := super at: aProperty put: anObject.
	wasChanged ifTrue: [self propertyChanged: aProperty].
	^ result