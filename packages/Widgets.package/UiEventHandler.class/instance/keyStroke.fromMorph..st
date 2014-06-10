keyboard - handling
keyStroke: aKeyboardEvent fromMorph: aMorph

	"Handle VM-specific mapping from mouse wheel interaction to key stroke event: [Ctrl]+Up/Down"
	(self isMouseWheelEvent: aKeyboardEvent)
		ifTrue: [^ self mouseWheel: (self asMouseWheelEvent: aKeyboardEvent) fromMorph: aMorph].

	(self tabAmongFields and: [aKeyboardEvent keyCharacter = Character tab])
		ifTrue: [self shouldBeImplemented].
		
	self
		handleShortcut: aKeyboardEvent;
		keyStroked: aKeyboardEvent.
		
	(#(3 13 10) includes: aKeyboardEvent keyValue)
		ifTrue: [self returnStroked].