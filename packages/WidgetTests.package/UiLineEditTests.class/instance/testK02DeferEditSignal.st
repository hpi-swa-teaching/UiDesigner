tests - keyboard input
testK02DeferEditSignal

	self
		spyOn: #textEdited:;
		keyStroke: sut textMorph key: $h modifiers: #();
		assert: {#textEdited:. {'h' asText}}
		equals: spy waitForNextSignal.
		
	sut
		bottomRight: 0@0;
		openInWorld; "Needs to be in world to have an alarm scheduler. See #alarmScheduler."
		deferEditSignalTime: 50.
	
	self
		assert: spy queue isEmpty;
		keyStroke: sut textMorph key: $h modifiers: #();
		assert: spy queue isEmpty.

	(Delay forMilliseconds: 100) wait.
	World runLocalStepMethods.
	
	self
		assert: {#textEdited:. {'hh' asText}}
		equals: spy waitForNextSignal.