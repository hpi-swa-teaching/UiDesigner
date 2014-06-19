tests
test05WidgetLayouting

	sut
		horizontalScrollBarPolicy: #alwaysOff;
		verticalScrollBarPolicy: #alwaysOff;
		extent: 100@100;
		widget: (Morph new extent: 100@100).
	
	sut widget
		changeTableLayout;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		addMorph: (Morph new extent: 150@150).
		
	sut transformMorph fullBounds.
		
	self
		assert: 150@150 equals: sut widget extent;
		assert: 50 equals: sut horizontalScrollBar maximum;
		assert: 50 equals: sut verticalScrollBar maximum.
