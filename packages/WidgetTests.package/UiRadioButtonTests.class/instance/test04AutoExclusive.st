tests - mouse input
test04AutoExclusive

	| group otherButton |
	group := Morph new.
	otherButton := sut class new.
	
	group addMorph: sut; addMorph: otherButton.  
	
	sut toggle.
	otherButton toggle.
	
	self
		deny: sut checked;
		assert: otherButton checked.
		
	otherButton toggle.
	
	self
		deny: sut checked;
		assert: otherButton checked.