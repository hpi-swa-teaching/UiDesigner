geometry
extent: aPoint

	| extentWasChanged |
	extentWasChanged := self extent ~= aPoint.
	super extent: aPoint.

	extentWasChanged ifTrue: [self updateLayout].