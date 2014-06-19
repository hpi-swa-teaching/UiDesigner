tests - keyboard input
testK05ReadOnly

	sut readOnly: true.

	self
		keyStroke: sut textMorph key: $h modifiers: #();
		assert: sut theText = ''.		
	