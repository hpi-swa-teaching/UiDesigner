tests
test02valueChange

	sut
		tracking: true;
		currentValue: 0. 
	
	self
		assert: 0 equals: sut currentValue;
		assert: sut sliderPosition = sut currentValue.
	
	sut currentValue: 10.
	
	self
		assert: 10 equals: sut currentValue;
		assert: sut sliderPosition = sut currentValue.
	
	"Should even work without tracking."
	sut
		tracking: false;
		currentValue: 0.
		
	self assert: sut sliderPosition = sut currentValue.    
	
	sut currentValue: 10.
	
	self assert: sut sliderPosition = sut currentValue.    