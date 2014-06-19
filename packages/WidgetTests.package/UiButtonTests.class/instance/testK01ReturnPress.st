tests - keyboard input
testK01ReturnPress

	sut checkable: true.  
	
	self
		deny: sut checked;
		keyPress: Character enter;
		assert: sut checked.  