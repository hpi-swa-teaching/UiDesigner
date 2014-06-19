tests
test07AreaResizable

	sut
		extent: 100@100;
		areaResizable: true;
		widget: (Morph new extent: 150@150).

	self
		assert: 100 equals: sut height.
	
	sut
		verticalScrollBarPolicy: #alwaysOff;		
		fullBounds.
	
	self assert: 150 equals: sut transformMorph height.
	
	sut
		verticalScrollBarPolicy: #alwaysOn;
		horizontalScrollBarPolicy: #alwaysOff.
	sut widget width: 200.
	sut fullBounds.
	
	self assert: 200 equals: sut transformMorph width.