accessing
areaResizable
	"Check whether width or height of this area can be adapted to when scroll bars are #alwaysOff."
	
	^ areaResizable ifNil: [false]