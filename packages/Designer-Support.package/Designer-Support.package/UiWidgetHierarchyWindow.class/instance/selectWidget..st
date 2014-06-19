slots
selectWidget: aWidgetNode
	| parent widget |
	
	widget := aWidgetNode at: #widget.
	parent := widget owner.
	
	parent changeSelectionTo: widget