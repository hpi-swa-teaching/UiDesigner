tests
test04SwitchingBehavior

	self
		spyOn: #turnedOn;
		spyOn: #turnedOff.
		
	sut toggle.
	
	self assert: #turnedOn equals: spy waitForNextSignal first.
	
	sut toggle.
	
	self assert: #turnedOff equals: spy waitForNextSignal first.