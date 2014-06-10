accessing
verticalScrollBarPolicy: aSymbol
	"#asNeeded, #alwaysOn, #alwaysOff"
	
	aSymbol = self verticalScrollBarPolicy ifTrue: [^ self].
	
	verticalScrollBarPolicy := aSymbol.
	
	self
		updateLayout;
		updateScrollBars.