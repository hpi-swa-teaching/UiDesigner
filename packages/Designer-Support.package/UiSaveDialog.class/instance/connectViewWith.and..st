initialize
connectViewWith: aMorph and: aPropertyTable

	self setValues: aMorph.
	self connect: self ui classNameInput signal: #textEdited: to: aMorph selector: #uiClassName:.