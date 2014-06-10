accessing
horizontalScrollBarPolicy: aSymbol
	"#asNeeded, #alwaysOn, #alwaysOff"
	
	aSymbol = self horizontalScrollBarPolicy ifTrue: [^ self].
	
	horizontalScrollBarPolicy := aSymbol.
	
	self
		updateLayout;
		updateScrollBars.