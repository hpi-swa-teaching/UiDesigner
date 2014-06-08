updating
updateWidgets

	widgets := OrderedCollection new.
	Morph allSubclassesDo: [:c | | node |
		node := widgets
			detect: [:n | (n at: #category) = c widgetCategory]
			ifNone: [widgets add: (UiPropertyItemNode new
				addDefaultGroup;
				at: #category put: c widgetCategory;
				yourself)].
		
		(c isWidgetClass or: [c widgetCategory = Morph widgetCategory])
			ifTrue: [node addChild: (
				UiPropertyItemNode new
					at: #class put: c;
					yourself)]].
	
	self modelReset.