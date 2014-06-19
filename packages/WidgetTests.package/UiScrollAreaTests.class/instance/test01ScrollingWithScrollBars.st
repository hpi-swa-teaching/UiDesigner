tests
test01ScrollingWithScrollBars

	sut
		extent: 100@100;
		widget: (Morph new extent: 500@500).
		
	sut fullBounds.
		
	self
		assert: 0 equals: sut horizontalScrollBar currentValue;
		assert: 0 equals: sut verticalScrollBar currentValue;
		assert: 0@0 equals: sut transformMorph offset.
		
	sut horizontalScrollBar currentValue: 100.
	sut verticalScrollBar currentValue: 200.
		
	self assert: 100@200 equals: sut transformMorph offset.