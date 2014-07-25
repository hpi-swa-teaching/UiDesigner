initialization
connectDesigner.
	
	UiDesigner recentDesigns do: [:name | self ui recentList addText: name].
	self connect: self ui recentList signal: #currentTextChanged: toSelector: #recentDesignSelected:.
	self connect: self ui recentList signal: #currentTextChanged: toSelector: #close.	
		
	UiDesigner designTemplates do: [:class | self ui templateList addText: class name].
	self connect: self ui templateList signal: #currentTextChanged: toSelector: #designTemplateSelected:.
	self connect: self ui templateList signal: #currentTextChanged: toSelector: #close.
	
	self connect: self ui openBtn signal: #clicked: toSelector: #close.
	self connect: self ui newBtn signal: #clicked: toSelector: #close