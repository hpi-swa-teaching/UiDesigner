tests
test02MousePress

	self
		spyOn: #mousePressed:;
		mousePress: #(left);
		assert: #mousePressed: equals: spy waitForNextSignal first.