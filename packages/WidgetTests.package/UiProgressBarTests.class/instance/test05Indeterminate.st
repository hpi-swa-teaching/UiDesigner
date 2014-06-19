tests
test05Indeterminate
	"max unknown"
	
	sut maximum: nil.
	
	self
		assert: sut isIndeterminate;
		assert: 1.0 equals: sut fraction.