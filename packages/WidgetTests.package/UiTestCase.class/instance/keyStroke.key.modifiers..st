events
keyStroke: aMorph key: aCharacter modifiers: someButtons

	self
		simulateKeyEvent: #keystroke
		key: aCharacter
		buttons: someButtons
		morph: aMorph.