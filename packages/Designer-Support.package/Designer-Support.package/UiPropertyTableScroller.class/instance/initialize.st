initialize
initialize

	super initialize.
	self
		color: Color transparent;
		width: UiPropertyTable defaultWidth + self scrollBarThickness; 
		height: 200;
		borderWidth: 0.
		
	self
		horizontalScrollBarPolicy: #alwaysOff;
		verticalScrollBarPolicy: #asNeeded.
		
	self verticalScrollBar singleStep: 22.  
	
	self widget: UiPropertyTable new.
	self connect: self widget signal: #focusChanged: toSelector: #scrollToShow: