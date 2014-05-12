updating
setNewWidget: widget
	self attributes: (OrderedCollection new).
	
	Morph allSubclassesDo: [:c | | node |
		node := self attributes
			detect: [:n | (n at: #category) = c widgetCategory]
			ifNone: [self attributes add: (UiPropertyItemNode new
				addDefaultGroup;
				at: #category put: c widgetCategory;
				yourself)].
		
		(c isWidgetClass or: [c widgetCategory = Morph widgetCategory])
			ifTrue: [node addChild: (
				UiPropertyItemNode new
					at: #class put: c;
					yourself)]].
			
	self modelReset.