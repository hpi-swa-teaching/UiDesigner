initialization
initialize

	horizontalScrollBarPolicy := #alwaysOff.
	verticalScrollBarPolicy := #asNeeded.
	widgetResizable := true.

	super initialize.
		
	self
		color: Color white;
		outerBorderWidth: 1.
		
	self transformMorph color: Color transparent.
	
	self verticalScrollBar
		singleStep: 20;
		outerBorderWidth: 0;
		color: Color transparent.  
	self verticalScrollBar eventHandler setProperty: #handlesKeyboard toValue: [false].
	
	self connect: self textMorph signal: #focusChanged: toSelector: #scrollToShow:.
	self connect: self textMorph signal: #textEdited: toSelector: #textEdited:.
	self connect: self textMorph signal: #textEdited: toSelector: #textChanged:.
	self connect: self textMorph signal: #accepted toSelector: #acceptChanges.
	self connect: self textMorph signal: #reverted toSelector: #revertChanges.
	self connect: self textMorph signal: #valueChanged: toSelector: #valueChanged:.