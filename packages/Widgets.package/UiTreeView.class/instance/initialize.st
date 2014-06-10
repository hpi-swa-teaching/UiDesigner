initialization
initialize

	super initialize.
	
	self connect: self signal: #doubleClicked: toSelector: #toggleNode:.
	
	self connect: self viewport signal: #decorationClicked: toSelector: #toggleIndex:.
	
	self addHorizontalHeader.