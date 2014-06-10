private
asMouseWheelEvent: aKeyboardEvent
	"Converts the given keyboard event into a mouse wheel event. CHECK WITH #isMouseWheelEvent: FIRST BEFORE CALLING THIS FUNCTION!"
	
	^ UiMouseWheelEvent new
		setType: #mouseWheel
		position: aKeyboardEvent position
		direction: (aKeyboardEvent keyCharacter = Character arrowUp
			ifTrue: [#up]
			ifFalse: [#down])
		buttons: aKeyboardEvent buttons
		hand: aKeyboardEvent hand
		stamp: aKeyboardEvent timeStamp