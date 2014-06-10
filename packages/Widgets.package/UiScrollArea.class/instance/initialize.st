initialization
initialize

	super initialize.
	
	self
		horizontalScrollBar: (UiScrollBar new orientation: #horizontal; buttonMode: #none; color: Color white; outerBorderWidth: 0);
		verticalScrollBar: (UiScrollBar new orientation: #vertical; buttonMode: #none; color: Color white; outerBorderWidth: 0);
		transformMorph: self transformMorphClass new.
		
	cornerWidget := Morph new color: Color white.
	
	self initializeEventHandler.
	
	self connect: self transformMorph signal: #areaChanged toSelector: #updateLayout.
	self connect: self transformMorph signal: #areaChanged toSelector: #updateScrollBars.

	self connect: self transformMorph signal: #verticalOffsetChanged: to: self verticalScrollBar selector: #currentValue:.
	self connect: self transformMorph signal: #horizontalOffsetChanged: to: self horizontalScrollBar selector: #currentValue:.

	self connect: self horizontalScrollBar signal: #valueChanged: to: self transformMorph selector: #horizontalOffset:.
	self connect: self verticalScrollBar signal: #valueChanged: to: self transformMorph selector: #verticalOffset:.
	
	self
		color: Color transparent;
		addMorphBack: self transformMorph;
		extent: 160@100.