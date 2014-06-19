tests - keyboard input
testK04ChangeText

	self
		spyOn: #textChanged:;
		keyStroke: sut textMorph key: $h modifiers: #().
		
	self 
		assert: {#textChanged:. {'h' asText}} equals: spy waitForNextSignal.
		
	