initialization
initialize

	super initialize.
	self ui setupUi: self.
	self ui prop addPaneSplitters.	
	
	self ui centralScroller
		borderWidth: 0;
		fillStyle: (BitmapFillStyle fromForm: self gridForm).
	
	"BAD: Viewport should not be accessed from the outside."
	
	self initializeButtons.
	