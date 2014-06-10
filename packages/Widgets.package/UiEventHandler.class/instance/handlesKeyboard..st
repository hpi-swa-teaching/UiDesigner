keyboard - testing
handlesKeyboard: aKeyboardEvent

	(self isMouseWheelEvent: aKeyboardEvent)
		ifTrue: [^ self handlesMouseWheel: (self asMouseWheelEvent: aKeyboardEvent)].
		
	^ (self valueOfProperty: #handlesKeyboard) cull: aKeyboardEvent