as yet unclassified
test03WrappingEnabled

	sut
		hResizing: #rigid;  
		theText: 'Hello, World! This is a very long text.';
		width: 50;
		fullBounds.
		
	self
		assert: sut width = 50;
		assert: sut height > 20.