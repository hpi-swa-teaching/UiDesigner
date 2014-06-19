tests - keyboard input
testK02EditTextWithAutoAccept

	sut autoAccept: true.

	self
		spyOn: #(textEdited: editingFinished:);
		keyStroke: sut textMorph key: $h modifiers: #().
		
	self
		deny: sut hasUnacceptedChanges;
		assert: {#textEdited:. {'h' asText}} equals: spy waitForNextSignal;
		assert: {#editingFinished:. {'h' asText}} equals: spy waitForNextSignal.