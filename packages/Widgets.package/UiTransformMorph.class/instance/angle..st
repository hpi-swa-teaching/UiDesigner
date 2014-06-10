accessing
angle: aNumber

	self angle = aNumber ifTrue: [^ self] .
	super angle: aNumber.
	self angleChanged: self angle.  