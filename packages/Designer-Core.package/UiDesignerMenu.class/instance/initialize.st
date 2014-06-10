initialization
initialize

	| versionText |
	super initialize.
	
	self ui setupUi: self.
	
	self ui titleLbl
		form: UiDesigner logo;
		left: (self center x - (UiDesigner logo width // 2)).
	
	versionText := ('<font color="#444444">', UiDesigner versionString, '</font>') asHtmlText.
	self ui versionLbl
		text: versionText;
		right: self right - versionText asMorph width + self ui versionLbl width - 10.
	
	self ui panel fillStyle: ((GradientFillStyle ramp: {
			0.0 -> (self ui panel color adjustBrightness: 0.1).
			0.1-> (self ui panel color adjustBrightness: 0.05).
			0.6 -> (self ui panel color darker)})
		origin: self innerBounds topLeft;
		direction: 0 @ self innerBounds height).
		
	self ui recentLbl text: '<b><font color="#444444">Recent Designs</font></b>'.
	self ui templateLbl text: '<b><font color="#444444">Design Templates</font></b>'.
	
	self ui recentList color: Color transparent.
	self ui templateList color: Color transparent.
	
	UiDesigner recentDesigns do: [:name |
		self ui recentList addText: name].
	self connect: self ui recentList signal: #currentTextChanged: toSelector: #recentDesignSelected:.
	self connect: self ui recentList signal: #currentTextChanged: toSelector: #close.
	
	UiDesigner designTemplates do: [:class |
		self ui templateList addText: class name].
	self connect: self ui templateList signal: #currentTextChanged: toSelector: #designTemplateSelected:.
	self connect: self ui templateList signal: #currentTextChanged: toSelector: #close.
	
	self connect: self ui openBtn signal: #clicked: toSelector: #close.
	self connect: self ui newBtn signal: #clicked: toSelector: #close.