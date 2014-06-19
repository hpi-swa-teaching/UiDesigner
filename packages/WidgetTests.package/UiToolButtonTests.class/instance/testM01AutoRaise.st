tests - mouse input
testM01AutoRaise

	sut autoRaise: false.
	
	self
		assert: sut raised;
		mouseLeave;
		assert: sut raised.
	
	sut autoRaise: true.
	
	self
		deny: sut raised;
		mouseEnter;
		assert: sut raised;
		mouseLeave;
		deny: sut raised.
		
	sut autoRaise: false.
	
	self assert: sut raised.