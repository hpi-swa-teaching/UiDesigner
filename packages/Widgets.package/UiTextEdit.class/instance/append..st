text changing
append: stringOrText

	self theText append: stringOrText.
	self textMorph recompose.
	
	self autoAccept
		ifTrue: [self textMorph editor accept].
		
	self textChanged: self theText.