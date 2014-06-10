accessing
buttonMode: aSymbol
	"Specifiies how many arrow buttons are visible to modify the value with mouse clicks
	#distant ... one arrow button at each end of the scroll bar
	#adjacent ... both arrow buttons at the higher end of the scroll bar (like on Mac OS X)
	#both ... all three arrow buttons (like Cleanlooks in Gnome/Linux)
	#none ... hide all buttons"

	buttonMode = aSymbol ifTrue: [^ self].

	buttonMode := aSymbol.
	
	self
		initializeButtons;
		updateSupportMorphs.