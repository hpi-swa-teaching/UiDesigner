initialization
initialize
	| versionText recentDesignsHeading templateHeading |
	
	versionText := ('<font color="#444444">', UiDesigner versionString, '</font>') asHtmlText.
	recentDesignsHeading := '<b><font color="#444444">Recent Designs</font></b>'.
	templateHeading := '<b><font color="#444444">Design Templates</font></b>'.
	
	super initialize.
	self ui setupUi: self.
	
	self ui titleLbl
		form: UiDesigner logo;
		left: (self center x - (UiDesigner logo width // 2)).
	
	self ui versionLbl
		text: versionText;
		right: self right - versionText asMorph width + self ui versionLbl width - 10.
	
	self setFillStyle.
		
	self ui recentLbl text: recentDesignsHeading.
	self ui templateLbl text: templateHeading.
	
	self ui recentList color: Color transparent.
	self ui templateList color: Color transparent.
	
	UiDesigner recentDesigns do: [:name | self ui recentList addText: name].
	self connect: self ui recentList signal: #currentTextChanged: toSelector: #recentDesignSelected:.
	self connect: self ui recentList signal: #currentTextChanged: toSelector: #close.
	
	UiDesigner designTemplates do: [:class | self ui templateList addText: class name].
	self connect: self ui templateList signal: #currentTextChanged: toSelector: #designTemplateSelected:.
	self connect: self ui templateList signal: #currentTextChanged: toSelector: #close.
	
	self connect: self ui openBtn signal: #clicked: toSelector: #close.
	self connect: self ui newBtn signal: #clicked: toSelector: #close.