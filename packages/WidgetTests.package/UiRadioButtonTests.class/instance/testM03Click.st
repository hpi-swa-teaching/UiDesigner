tests - mouse input
testM03Click
		
	self
		spyOn: #(pressed released clicked:);
		mouseClick: #(left).
	
	self
		deny: sut down;
		assert: #pressed equals: spy waitForNextSignal first;
		assert: #released equals: spy waitForNextSignal first;
		assert: {#clicked:. {true}} equals: spy waitForNextSignal.