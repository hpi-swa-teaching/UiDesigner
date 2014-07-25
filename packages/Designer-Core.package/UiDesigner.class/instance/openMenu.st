initialization
openMenu

	| menu window |
	menu := UiDesignerMenu new
		disableTableLayout: true;
		center: World center.
	menu ignoresColorMappings: true.
	self darken.
	self connectMenuToDesginer: menu.
	window := self openInWindowLabeled: 'Morphic Designer'.					
	menu center: window center.
	window addMorphFront: menu