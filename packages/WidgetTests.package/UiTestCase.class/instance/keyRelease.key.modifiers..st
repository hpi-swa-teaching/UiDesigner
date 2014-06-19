events
keyRelease: aMorph key: aCharacter modifiers: someButtons

	self
		simulateKeyEvent: #keyUp
		key: aCharacter
		buttons: someButtons
		morph: aMorph.