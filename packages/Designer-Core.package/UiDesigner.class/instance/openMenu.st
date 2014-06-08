initialization
openMenu

	| menu window |
	menu := UiDesignerMenu new
		disableTableLayout: true;
		center: World center.

	menu ignoresColorMappings: true.
	self darken.
		
	self connect: menu signal: #recentDesignSelected: toSelector: #load:.
	self connect: menu signal: #designTemplateSelected: toSelector: #loadTemplate:.
	
	self connect: menu ui openBtn signal: #clicked: toSelector: #load.
	self connect: menu ui newBtn signal: #clicked: toSelector: #reset.
	
	self connect: menu signal: #closed toSelector: #lighten.

	window := self openInWindowLabeled: 'Morphic Designer'.	
				
	menu center: window center.
	
	window addMorphFront: menu.