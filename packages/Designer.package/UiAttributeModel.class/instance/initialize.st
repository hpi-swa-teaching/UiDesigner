as yet unclassified
initialize 	
	SystemChangeNotifier uniqueInstance
		notify: self
		ofSystemChangesOfItem: #class
		using: #setNewWidget.