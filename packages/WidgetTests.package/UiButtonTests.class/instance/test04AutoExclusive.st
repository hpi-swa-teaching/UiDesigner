tests
test04AutoExclusive

	| group otherButton |
	group := Morph new.
	otherButton := sut class new.
	
	group addMorph: sut; addMorph: otherButton.  
	
	sut checkable: true.
	otherButton checkable: true.
	
	sut toggle.
	otherButton toggle.
	
	self
		assert: sut checked;
		assert: otherButton checked.

	sut checkable: false.
	otherButton checkable: false.
		
	sut autoExclusive: true.
	otherButton autoExclusive: true.
	
	self assert: sut checkable.
	
	sut toggle.
	otherButton toggle.
	
	self
		deny: sut checked;
		assert: otherButton checked.
		
	otherButton toggle.
	
	self assert: otherButton checked.