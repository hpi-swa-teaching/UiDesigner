event handling
keyboardFocusChange: aBoolean

	self editView
		keyboardFocusChange: aBoolean.

	paragraph ifNotNil: [:p | p focused: aBoolean].
	aBoolean
		ifTrue: [self editor; startBlinking]
		ifFalse: [self stopBlinking].
	
	(aBoolean not & self readOnly not and: [self acceptOnFocusLost])
		ifTrue: [self editor accept].