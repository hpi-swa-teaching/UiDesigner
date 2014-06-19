tests
test03range

	sut
		minimum: 0;
		maximum: 10.
		
	self assert: 10 equals: sut range extent.
	
	sut minimum: 5.
	
	self assert: 5 equals: sut range extent.
	
	sut range: (1 to: 9).
	
	self
		assert: 1 equals: sut minimum;
		assert: 9 equals: sut maximum;
		assert: 8 equals: sut range extent.