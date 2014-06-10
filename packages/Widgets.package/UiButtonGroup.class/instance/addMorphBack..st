submorphs-add/remove
addMorphBack: aButton

	super addMorphBack: aButton.
	
	aButton autoExclusive: true.
	
	self
		connect: aButton signal: #clicked: toSelector: #clickButton: pattern: #(0);
		connect: aButton signal: #pressed toSelector: #pressButton: pattern: #(0);
		connect: aButton signal: #released toSelector: #releaseButton: pattern: #(0);
		connect: aButton signal: #toggled: toSelector: #toggleButton: pattern: #(0).