add/remove
add: aCellIndex event: aUserInputEvent

	aUserInputEvent shiftPressed
		ifTrue: [^ super add: aCellIndex].

	self add: aCellIndex.