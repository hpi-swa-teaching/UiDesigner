accessing
areaResizable: aBoolean

	aBoolean = areaResizable ifTrue: [^ false].
	
	areaResizable := aBoolean.
	
	self updateLayout.