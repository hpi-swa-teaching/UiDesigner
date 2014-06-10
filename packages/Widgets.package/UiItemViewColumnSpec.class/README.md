This specification is used by the view to access model data and create (morphic) items for the viewport PER COLUMN.

UiItemViewColumnSpec newFrom: {
	#text -> #authorName.
	#icon -> #statusForm "selector in model or key in UiPropertyItemNode".
	#balloonText -> 3. "3rd property in #properties of model"}.