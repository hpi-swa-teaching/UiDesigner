accessing
scale: aNumber

	self scale = aNumber ifTrue: [^ self] .
	super scale: aNumber.
	self scaleChanged: self scale.