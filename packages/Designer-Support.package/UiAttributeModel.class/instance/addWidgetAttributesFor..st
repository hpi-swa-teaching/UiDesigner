updating
addWidgetAttributesFor: widget
		
	self addGeneralInformation: widget.
	self addGeometryAttributes: widget.

	self addOwnerSpecificLayout: widget.
	self addLayoutSettings: widget.
	widget hasTableLayout ifTrue: [self addTableLayoutProperties: widget].
	widget hasProportionalLayout ifTrue: [self addProportionalLayoutProperties: widget].
	
	self addCustomProperties: widget.