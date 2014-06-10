private
isMouseWheelEvent: aKeyboardEvent
	"Check whether the given keyboard event encoded a mouse wheel event."
	
	^ (aKeyboardEvent isKeystroke
		and: [aKeyboardEvent controlKeyPressed])
		and: [aKeyboardEvent keyCharacter = Character arrowUp
			or: [aKeyboardEvent keyCharacter = Character arrowDown]]