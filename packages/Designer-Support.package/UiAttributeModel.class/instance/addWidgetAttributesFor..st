updating
addWidgetAttributesFor: widget
		
	self addGeneralInformation: widget;
		addGeometryAttributes: widget.

	self addOwnerSpecificLayout: widget;
		addLayoutSettings: widget.
	widget hasTableLayout ifTrue: [self addTableLayoutProperties: widget].
	widget hasProportionalLayout ifTrue: [self addProportionalLayoutProperties: widget].
	
	self addCustomProperties: widget.