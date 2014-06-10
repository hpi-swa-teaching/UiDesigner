add/remove
remove: aCellIndex event: aUserInputEvent

	aUserInputEvent shiftPressed
		ifTrue: [^ super remove: aCellIndex].
		
	self remove: aCellIndex.  