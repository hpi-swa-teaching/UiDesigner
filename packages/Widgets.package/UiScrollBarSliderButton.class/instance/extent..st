geometry
extent: aPoint
	
	self orientation = #horizontal ifTrue: [
		super extent: (aPoint max: 10@0)].
	
	self orientation = #vertical ifTrue: [
		super extent: (aPoint max: 0@10)].