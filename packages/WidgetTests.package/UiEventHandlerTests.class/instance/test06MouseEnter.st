tests
test06MouseEnter

	self
		spyOn: #mouseEntered:;
		mouseEnter;
		assert: #mouseEntered: equals: spy waitForNextSignal first.