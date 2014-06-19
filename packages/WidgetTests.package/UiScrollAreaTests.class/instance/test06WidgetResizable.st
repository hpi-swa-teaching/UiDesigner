tests
test06WidgetResizable

	sut
		horizontalScrollBarPolicy: #alwaysOff;
		widgetResizable: true;
		extent: 100@100;
		widget: (Morph new extent: 150@150).
	
	sut transformMorph fullBounds.
	
	self assert: sut transformMorph width equals: sut widget width.

	sut
		horizontalScrollBarPolicy: #alwaysOn;  
		verticalScrollBarPolicy: #alwaysOff.
		
	sut transformMorph fullBounds. 
	
	self assert: sut transformMorph height equals: sut widget height.