tests - mouse input
testM04InteractDisabled
		
	sut
		checkable: true;
		enabled: false.
		
	self
		deny: sut checked;
		mouseClick: #(left);
		deny: sut checked.