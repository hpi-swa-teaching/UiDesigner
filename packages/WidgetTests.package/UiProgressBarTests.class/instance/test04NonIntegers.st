tests
test04NonIntegers

	sut
		minimum: 1.5;
		maximum: 3.0;
		currentValue: 2.25.
		
	self assert: 1/2 equals: sut fraction.