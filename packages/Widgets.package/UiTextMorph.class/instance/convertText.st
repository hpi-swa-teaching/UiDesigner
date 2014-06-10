converting
convertText
	
	| v |
	v := self convertedValue.

	self newContents: self convertedText.
	self editView updateScrollBars.
	
	self valueChanged: v.  