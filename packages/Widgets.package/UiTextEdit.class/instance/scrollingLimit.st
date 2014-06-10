accessing
scrollingLimit
	"When #scrollingMode is not #never use this value to compute the height of this text edit field."
	
	^ scrollingLimit ifNil: [scrollingLimit := 10 "lines"]