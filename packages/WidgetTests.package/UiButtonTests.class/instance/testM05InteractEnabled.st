tests - mouse input
testM05InteractEnabled
		
	sut checkable: true.
		
	self
		deny: sut checked;
		mouseClick: #(left);
		assert: sut checked.