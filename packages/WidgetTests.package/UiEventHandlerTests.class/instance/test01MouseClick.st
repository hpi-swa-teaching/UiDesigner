tests
test01MouseClick

	self
		spyOn: #(mouseClicked: mousePressed: mouseReleased:);
		mouseClick: #(left);
		assert: #mousePressed: equals: spy waitForNextSignal first;
		assert: #mouseClicked: equals: spy waitForNextSignal first;
		assert: #mouseReleased: equals: spy waitForNextSignal first.