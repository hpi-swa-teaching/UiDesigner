tests
test02ScrollingWithOffset

	sut
		extent: 100@100;
		widget: (Morph new extent: 500@500).
		
	sut fullBounds.
		
	self
		assert: 0 equals: sut horizontalScrollBar currentValue;
		assert: 0 equals: sut verticalScrollBar currentValue;
		assert: 0@0 equals: sut transformMorph offset.
		
	sut transformMorph offset: 100@200.
	
	self assert: 100 equals: sut horizontalScrollBar currentValue.
	self assert: 200 equals: sut verticalScrollBar currentValue.