tests - keyboard input
testK01PressReturn

	self
		spyOn: #(editingFinished: returnPressed:);
		keyStroke: sut textMorph key: $h modifiers: #();
		keyStroke: sut textMorph key: Character cr modifiers: #().
		
	self
		deny: sut hasUnacceptedChanges;
		assert: {#editingFinished:. {'h' asText}} equals: spy waitForNextSignal;
		assert: {#returnPressed:. {'h' asText}} equals: spy waitForNextSignal.