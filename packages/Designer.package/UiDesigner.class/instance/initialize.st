initialization
initialize

	super initialize.
	self ui setupUi: self.
	self ui prop addPaneSplitters.	
	
	self ui centralScroller
		borderWidth: 0;
		fillStyle: (BitmapFillStyle fromForm: self gridForm).
	
	"BAD: Viewport should not be accessed from the outside."
	
	
	"self ui filterEdit deferEditSignalTime: 300."
		

		
	self connect: self ui newBtn signal: #clicked: toSelector: #reset.
	self connect: self ui saveBtn signal: #clicked: toSelector: #openSaveDialog.
	self connect: self ui openBtn signal: #clicked: toSelector: #load.
	
	self connect: self ui hierarchyWindowButton signal: #toggled: toSelector: #toggleHierarchyWindow:.
	self connect: self ui widgetsWindowButton signal: #toggled: toSelector: #toggleWidgetsWindow:.
	self connect: self ui attributesWindowButton signal: #toggled: toSelector: #toggleAttributesWindow:.