initialize
loadTextFrom: aMorph and: anotherMorph
	
	self ui classNameInput theText: aMorph uiClassName.
	self ui packageNameInput theText: anotherMorph theText.
	
	self detectClassExistsWarning: aMorph uiClassName 