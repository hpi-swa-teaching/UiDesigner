tests
test01New

	self
		assert: sut enabled;
		assert: 0 equals: sut minimum;
		assert: 100 equals: sut maximum;
		assert: 50 equals: sut currentValue.