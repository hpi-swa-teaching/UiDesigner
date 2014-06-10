accessing
displayMode
	"#normal ... normal mode with different colors for keyboard focus and changed state
	#highlight ... normal colors will be replaced with highlight ones."
	
	^ displayMode ifNil: [displayMode := #normal]