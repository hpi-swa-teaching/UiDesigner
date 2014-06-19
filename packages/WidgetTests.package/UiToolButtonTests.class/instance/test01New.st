tests
test01New

	super test01New.
	
	self
		assert: sut autoRaise;
		deny: sut raised;
		assert: #textBesideIcon equals: sut buttonStyle.