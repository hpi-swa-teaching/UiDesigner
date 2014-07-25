initialization
initialize

	super initialize.
	self ui setupUi: self.
	self ui titleLbl
		form: UiDesigner logo;
		left: (self center x - (UiDesigner logo width // 2)).
		
	self ui versionLbl
		text: self versionText;
		right: self right - self  versionText asMorph width + self ui versionLbl width - 10.
	self setFillStyle.
		
	self ui recentLbl text: self recentDesignsHeading.
	self ui templateLbl text: self templateHeading.
	
	self ui recentList color: Color transparent.
	self ui templateList color: Color transparent.
	
	self connectDesigner.
	