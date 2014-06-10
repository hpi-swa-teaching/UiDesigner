animations
fadeOut

	self visible ifFalse: [^ self].
	
	fadeAnimation ifNil: [fadeAnimation := (AnimAlphaBlendAnimation
		fadeOutOn: self
		duration: 200)
		register;
		start: #keepWhenFinished].