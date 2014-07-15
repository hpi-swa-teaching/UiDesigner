testing
test01Highlighting
	self assert: ((sut isHighlighted) = false).
	
	sut highlight.
	self assert: (sut isHighlighted = true).
	self assert: (sut submorphs last isKindOf: BorderedMorph).
	
	sut unhighlight.
	self assert: (sut isHighlighted = false).