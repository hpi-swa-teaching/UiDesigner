updating
setNewWidget: widget
	self attributes: (OrderedCollection new).
	
	widget class allInstVarNames do: [ :variableName | | node |
		node := self attributes
			detect: [:n | (n at: #attributeOriginClass) = (widget class)]
			ifNone: [self attributes add: (UiPropertyItemNode new
				addDefaultGroup;
				at: #attributeOriginClass put: (widget class);
				yourself)].
		
		node addChild: (
			UiPropertyItemNode new
			at: #propertyName put: variableName;
			yourself) ].
			
	self modelReset.