tests - keyboard input
testK01EditText

	self
		spyOn: #textEdited:;
		keyStroke: sut textMorph key: $h modifiers: #().
		
	self
		assert: 'h' asText equals: sut theText;
		assert: {#textEdited:. {'h' asText}} equals: spy waitForNextSignal;
		assert: sut hasUnacceptedChanges.
	
	"Save the changes."	
	self
		spyOn: #editingFinished:;
		keyStroke: sut textMorph key: $s modifiers: #(cmd).
		
	self
		assert: {#editingFinished:. {'h' asText}} equals: spy waitForNextSignal;
		deny: sut hasUnacceptedChanges.