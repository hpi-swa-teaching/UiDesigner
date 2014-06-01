updating
setNewWidget: widget
	" pass me a widget INSTANCE to have all its attributes listed "
	
	
	self attributes: (OrderedCollection new).
	
	self addGeneralInformation: widget.
	self addGeometryAttributes: widget.
	self addOwnerSpecificLayout: widget.
	self addLayoutSettings: widget.
	
	widget hasTableLayout ifTrue: [self addTableLayoutProperties: widget].
	widget hasProportionalLayout ifTrue: [self addProportionalLayoutProperties: widget].
	
	self addCustomProperties: widget.
	
	self currentWidget: widget.
	self modelReset.