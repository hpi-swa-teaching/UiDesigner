event handling
mouseDown: evt
	
	evt yellowButtonPressed ifTrue: [
		^ self yellowButtonActivity: evt shiftPressed].
	
	self grabKeyboard.
	
	editor ifNotNil: [:e |
		self
			handleInteraction: [e mouseDown: evt]
			fromEvent: evt].