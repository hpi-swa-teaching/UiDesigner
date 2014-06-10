initialization
initialize
	
	super initialize.
	self
		listSpec: (UiItemViewColumnSpec newFrom: {
			#text -> #text.
			#icon -> #icon.
			#balloonText -> #balloonText.
			#menu -> #menu});
		clear.