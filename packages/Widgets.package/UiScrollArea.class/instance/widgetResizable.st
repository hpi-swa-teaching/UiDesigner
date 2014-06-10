accessing
widgetResizable
	"Check whether width or height can be adapted to when scroll bars are #alwaysOff."
	
	^ widgetResizable ifNil: [false]