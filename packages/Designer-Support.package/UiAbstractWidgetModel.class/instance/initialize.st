initialization
initialize

	super initialize.
	self updateWidgets.
	
	SystemChangeNotifier uniqueInstance
		notify: self
		ofSystemChangesOfItem: #class
		using: #updateWidgets.