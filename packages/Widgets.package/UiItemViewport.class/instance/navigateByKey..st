events
navigateByKey: aKeyboardEvent

	| cc keyToActionMap |
	cc := self selection currentCell
		ifNil: [^ self selection add: 1@2 event: aKeyboardEvent].

	keyToActionMap := Dictionary newFrom: {
		Character arrowUp    -> #up.
		Character arrowDown  -> #down.
		Character arrowLeft  -> #left.
		Character arrowRight -> #right.
		Character pageUp     -> #pageUp.
		Character pageDown   -> #pageDown.
		Character home       -> #home.
		Character end        -> #end}.

	(keyToActionMap at: aKeyboardEvent keyCharacter ifAbsent: [])
		ifNotNil: [:direction |
			self selection add: (self nextCellFor: cc direction: direction) event: aKeyboardEvent].