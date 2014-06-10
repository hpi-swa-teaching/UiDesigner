private
toggleButton: aButton

	self buttonToggled: aButton id: (self id: aButton).
	aButton checked
		ifTrue: [self currentIndexChanged: (self id: aButton)].