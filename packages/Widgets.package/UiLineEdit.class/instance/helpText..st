accessing
helpText: aString
	"Drawn whenver #theText is empty."
	
	helpText := aString.
	self redrawLater.