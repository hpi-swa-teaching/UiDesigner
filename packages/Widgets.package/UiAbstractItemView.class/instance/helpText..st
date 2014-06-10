accessing
helpText: aString
	"Shortcut for help text in the drag drop spec."
	
	self viewport helpText: aString.
	self redrawLater.