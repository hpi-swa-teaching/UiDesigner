events - private
simulateKeyEvent: aSymbol key: aCharacter buttons: someButtons morph: aMorph

	| morphicEvent |
	morphicEvent := MorphicEvent readFrom: ('{1} {2} {3} {4}' format: {
		aSymbol.
		time.
		self mapButtons: someButtons.
		aCharacter asciiValue}) readStream.

	UiPlatform current
		keyboardEvent: morphicEvent
		setCharCodeFor: aCharacter.
	
	morphicEvent
		wasHandled: false;
		setHand: hand;
		setPosition: aMorph center.
		
	hand newKeyboardFocus: aMorph.
	
	aMorph processEvent: morphicEvent.  