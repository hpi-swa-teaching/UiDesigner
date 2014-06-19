tests
test03MouseRelease

	self flag: #fixme. "does not work because the hand loses mouse focus during event processing...bah"
	self
		spyOn: #mouseReleased:;
		mouseRelease;
		assert: #mouseReleased: equals: spy waitForNextSignal first.