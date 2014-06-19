tests - mouse input
testM02Release
	
	sut down: true.
	
	self
		spyOn: #released;
		mouseRelease.
	
	self
		deny: sut down;
		assert: #released equals: spy waitForNextSignal first.