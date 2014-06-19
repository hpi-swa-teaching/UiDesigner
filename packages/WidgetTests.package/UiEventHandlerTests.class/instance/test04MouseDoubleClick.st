tests
test04MouseDoubleClick

	self
		spyOn: #mouseDoubleClicked:;
		mouseDoubleClick: #(left);
		assert: #mouseDoubleClicked: equals: spy waitForNextSignal first.