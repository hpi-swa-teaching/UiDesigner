accessing
widgetResizable: aBoolean

	aBoolean = widgetResizable ifTrue: [^ false].
	
	widgetResizable := aBoolean.
	
	self updateLayout.