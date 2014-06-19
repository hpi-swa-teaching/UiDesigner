tests
test07MouseLeave

	self
		spyOn: #mouseLeft:;
		mouseLeave;
		assert: #mouseLeft: equals: spy waitForNextSignal first.