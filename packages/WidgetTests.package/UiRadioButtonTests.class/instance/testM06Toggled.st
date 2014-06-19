tests - mouse input
testM06Toggled
		
	self
		spyOn: #toggled:;
		mouseClick: #(left).
	
	self assert: {#toggled:. {true}} equals: spy waitForNextSignal.