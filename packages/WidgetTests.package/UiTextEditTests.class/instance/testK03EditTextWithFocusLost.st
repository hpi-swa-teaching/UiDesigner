tests - keyboard input
testK03EditTextWithFocusLost

	sut acceptOnFocusLost: false.
	
	self
		spyOn: #editingFinished:;
		keyStroke: sut textMorph key: $h modifiers: #().
		
	sut textMorph
		grabKeyboard;
		releaseKeyboard.
	
	self assert: sut hasUnacceptedChanges.
	
	sut acceptOnFocusLost: true.
	
	sut textMorph
		grabKeyboard;
		releaseKeyboard.
	
	self 
		deny: sut hasUnacceptedChanges;
		assert: {#editingFinished:. {'h' asText}} equals: spy waitForNextSignal.
		
	