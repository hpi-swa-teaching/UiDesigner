accessing
connectViewWith: aMorph and: aPropertyTable

	self setValues: aMorph.

	self connect: self ui classNameInput signal: #textEdited: 
		to: aMorph selector: #uiClassName:.
	"self connect: self ui classNameInput signal: #textEdited: 
		to: aPropertyTable selector: #updateProperties."