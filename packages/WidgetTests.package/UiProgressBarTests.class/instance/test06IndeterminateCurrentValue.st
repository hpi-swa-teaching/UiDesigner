tests
test06IndeterminateCurrentValue

	sut
		maximum: nil;
		currentValue: 99999.
	self assert: 99999 equals: sut currentValue.