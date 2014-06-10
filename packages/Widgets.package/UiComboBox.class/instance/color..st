accessing
color: aColor
	"Base color of this combo box cannot be overridden. It should always be white."

	readOnlyButton color: aColor.
	arrowButton color: aColor.
	button color: aColor.
	listWidget borderColor: aColor muchDarker.