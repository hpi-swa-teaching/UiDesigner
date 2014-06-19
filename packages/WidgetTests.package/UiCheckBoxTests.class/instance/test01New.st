tests
test01New

	self
		assert: sut checkable;
		deny: sut checked;
		deny: sut autoExclusive;
		deny: sut down;
		assert: sut enabled.