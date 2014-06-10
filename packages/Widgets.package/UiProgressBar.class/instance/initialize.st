initialization
initialize

	super initialize.
	
	text := 'Progress...'.
	minimum := 0.
	maximum := 100.
	currentValue := 50.
	
	backgroundColor := Color gray: 0.5.
	backgroundTextColor := Color gray: 0.9.
	textColor := Color gray: 0.1.
	
	self
		color: (Color r: 1.0 g: 222/255 b: 0);
		extent: 100@20.