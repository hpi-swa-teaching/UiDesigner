slots
selectDefaultModel

	self ui widgetList
		removeAllColumns; model: nil;
		addColumn: ((UiItemViewColumnSpec newFrom: {#text -> #yourself. #icon -> #yourself. #balloonText -> #yourself})
			textConverter: [:node | (node includesKey: #category)
				ifTrue: [('<b>', (node at: #category), '</b>') asHtmlText]
				ifFalse: [(node at: #class) widgetClassName]];
			iconConverter: [:node | (node includesKey: #class)
				ifTrue: [(node at: #class) widgetClassIcon]];
			balloonTextConverter: [:node | (node includesKey: #class)
				ifTrue: [(node at: #class) name]]);
		addColumn: ((UiItemViewColumnSpec newFrom: {#icon -> #yourself. #balloonText -> #yourself})
			iconConverter: [:node | ((node includesKey: #class) and: [(node at: #class) isExperimentalWidgetClass])
				ifTrue: [UiFugueIcons exclamationFrameIcon]];
			balloonTextConverter: [:node | ((node includesKey: #class) and: [(node at: #class) isExperimentalWidgetClass])
				ifTrue: ['For experimental use only.']]);
		model: UiWidgetModel new.
		
	self expandWidgetCategories.