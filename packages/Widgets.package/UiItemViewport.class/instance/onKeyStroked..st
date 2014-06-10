events
onKeyStroked: aKeyboardEvent

	self keyStroked: aKeyboardEvent on: self selection currentIndex.
	
	((self editTriggers includes: #alphaNumericKeyPressed)
		and: [aKeyboardEvent keyCharacter isAlphaNumeric])
		ifTrue: [self beginEditCell: self selection currentCell].