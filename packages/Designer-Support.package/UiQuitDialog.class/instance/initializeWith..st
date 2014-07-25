initialization
initializeWith: aUiDesigner

	super initialize.
	self ui setupUi: self.
	self uiDesigner: aUiDesigner.
	self connect: self ui saveButton signal: #clicked: to: self selector: #onSaveButtonClick.
	self connect: self ui quitButton  signal: #clicked: to: self selector: #onQuitButtonClick.