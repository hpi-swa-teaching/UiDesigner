initialization
initialize

	super initialize.
	
	self
		hResizing: #spaceFill;
		verticalScrollBarPolicy: #alwaysOff;
		widgetResizable: false;  
		height: 20;
		acceptOnFocusLost: true.
	
	self textMorph
		width: 999999;
		acceptOnCR: true;
		revertOnEscape: true.
		
	self connect: self textMorph signal: #returnPressed: toSelector: #returnPressed:.
	self connect: self textMorph signal: #escapePressed: toSelector: #escapePressed:.
	self connect: self signal: #textEdited: toSelector: #tryHideCursor.