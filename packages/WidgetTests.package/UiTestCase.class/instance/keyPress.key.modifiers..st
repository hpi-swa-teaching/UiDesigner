events
keyPress: aMorph key: aCharacter modifiers: someButtons

	self
		simulateKeyEvent: #keyDown
		key: aCharacter
		buttons: someButtons
		morph: aMorph.