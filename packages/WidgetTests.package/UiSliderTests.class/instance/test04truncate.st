tests
test04truncate

	sut
		truncate: false;
		minimum: 0.5;
		maximum: 9.5;
		currentValue: 4.5.
		
	self
		assert: 0.5 equals: sut minimum;
		assert: 9.5 equals: sut maximum;
		assert: 4.5 equals: sut currentValue.
	
	sut truncate: true.

	self
		assert: 1 equals: sut minimum;
		assert: 10 equals: sut maximum;
		assert: 5 equals: sut currentValue.
		
	sut
		minimum: 0.5;
		maximum: 9.5;
		currentValue: 4.5.
		
	self
		assert: 1 equals: sut minimum;
		assert: 10 equals: sut maximum;
		assert: 5 equals: sut currentValue.
