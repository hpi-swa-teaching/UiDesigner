tests
test05KeyStroke

	self
		spyOn: #keyStroked:;
		keyStroke: $c;
		assert: #keyStroked: equals: spy waitForNextSignal first.