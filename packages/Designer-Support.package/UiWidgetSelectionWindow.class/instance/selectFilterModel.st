slots
selectFilterModel

	self ui widgetList
		removeAllColumns; model: nil;
		addColumn: ((UiItemViewColumnSpec newFrom: {#text -> #yourself. #icon -> #yourself. #balloonText -> #yourself})
			textConverter: [:node | (node at: #class) widgetClassName];
			iconConverter: [:node | (node at: #class) widgetClassIcon];
			balloonTextConverter: [:node | (node at: #class) name]);
		addColumn: ((UiItemViewColumnSpec newFrom: {#icon -> #yourself. #balloonText -> #yourself})
			iconConverter: [:node | ((node at: #class) isExperimentalWidgetClass)
				ifTrue: [UiFugueIcons exclamationFrameIcon]];
			balloonTextConverter: [:node | ((node at: #class) isExperimentalWidgetClass)
				ifTrue: ['For experimental use only.']]);
		model: UiFilteredWidgetModel new.