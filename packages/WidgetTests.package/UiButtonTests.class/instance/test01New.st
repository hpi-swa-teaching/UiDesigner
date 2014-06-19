tests
test01New

	self
		deny: sut checkable;
		deny: sut checked;
		deny: sut autoExclusive;
		deny: sut down;
		assert: sut enabled.