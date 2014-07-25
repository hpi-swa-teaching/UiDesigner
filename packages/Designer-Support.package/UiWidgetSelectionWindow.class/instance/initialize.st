initialization
initialize

   	super initialize.
   	self ui setupUi: self.
	
	self selectDefaultModel.
	self ui widgetList viewport dragEnabled: true.
	self setSelectionMode.
			
	self connect: self ui filterEdit signal: #textEdited: toSelector: #nameFilter:.