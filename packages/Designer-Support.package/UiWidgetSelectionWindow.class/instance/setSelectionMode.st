initialization
setSelectionMode

	self ui widgetList
		selectionMode: UiViewSingleSelection;
		dragDropSpec: (UiCustomItemViewDragDropSpec new
			dropEnabled: false;
			dragTransferType: #widgetClass).