initialization
initialize
   	super initialize.
   	self ui setupUi: self.
	
	self selectDefaultModel.
	
	self ui widgetList viewport dragEnabled: true.
	self ui widgetList
		selectionMode: UiViewSingleSelection;
		dragDropSpec: (UiCustomItemViewDragDropSpec new
			dropEnabled: false;
			dragTransferType: #widgetClass).
			
	self connect: self ui filterEdit signal: #textEdited: toSelector: #nameFilter:.