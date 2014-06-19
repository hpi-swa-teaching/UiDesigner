tests
test01New

	self
		assert: sut checkable;
		deny: sut checked;
		assert: sut autoExclusive;
		deny: sut down;
		assert: sut enabled.