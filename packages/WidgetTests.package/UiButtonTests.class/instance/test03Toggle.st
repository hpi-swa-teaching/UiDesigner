tests
test03Toggle

	sut toggle.
	
	self deny: sut checked.
	
	sut checkable: true.  
	
	self deny: sut checked.
	
	sut toggle.
	
	self assert: sut checked.
	
	sut checkable: false.
	
	self deny: sut checked.  