updating
setNewWidget: widget
	" pass me a widget INSTANCE to have all its attributes listed "
		
	self attributes: (OrderedCollection new).
	self addWidgetAttributesFor: widget.
	self currentWidget: widget.
	self modelReset.