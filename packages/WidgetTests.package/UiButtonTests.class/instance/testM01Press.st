tests - mouse input
testM01Press

	self deny: sut down.
	
	self
		spyOn: #pressed;
		mousePress: #(left).
	
	self
		assert: sut down;
		assert: #pressed equals: spy waitForNextSignal first.