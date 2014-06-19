tests - mouse input
testM06Toggled
	
	sut checkable: true.
		
	self
		spyOn: #toggled:;
		mouseClick: #(left);
		assert: {#toggled:. {true}} equals: spy waitForNextSignal;
		wait: 400; "avoid double click"
		mouseClick: #(left);
		assert: {#toggled:. {false}} equals: spy waitForNextSignal.