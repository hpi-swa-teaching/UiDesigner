tests
test03WidgetResizing

	sut
		horizontalScrollBarPolicy: #alwaysOff;
		verticalScrollBarPolicy: #alwaysOff;
		extent: 100@100;
		widget: (Morph new extent: 100@100).

	sut fullBounds.
	
	self
		assert: 0 equals: sut horizontalScrollBar maximum;
		assert: 0 equals: sut verticalScrollBar maximum.
	
	sut widget extent: 150@150.
	sut transformMorph fullBounds.
	
	self
		assert: 50 equals: sut horizontalScrollBar maximum;
		assert: 50 equals: sut verticalScrollBar maximum.
