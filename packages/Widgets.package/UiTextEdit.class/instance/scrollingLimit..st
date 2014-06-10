accessing
scrollingLimit: anInteger

	scrollingLimit = anInteger ifTrue: [^ self].

	scrollingLimit := anInteger.
	
	self updateLayout.