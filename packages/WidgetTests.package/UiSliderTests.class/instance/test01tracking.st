tests
test01tracking

	sut
		tracking: true;
		sliderPosition: 0.  
	
	self
		assert: sut hasTracking;
		assert: 0 equals: sut sliderPosition;
		assert: sut sliderPosition = sut currentValue.
	
	sut sliderPosition: 10.
	
	self
		assert: 10 equals: sut sliderPosition;
		assert: sut sliderPosition = sut currentValue.
	
	sut
		tracking: false;
		sliderPosition: 0.
		
	self
		assert: sut hasTracking not;
		assert: sut sliderPosition ~= sut currentValue.    