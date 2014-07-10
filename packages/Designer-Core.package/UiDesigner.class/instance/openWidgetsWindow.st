windowing
openWidgetsWindow
	self widgetsWindow: UiWidgetSelectionWindow new. 
	self widgetsWindow open: self.
	self widgetsWindow expandWidgetCategories.