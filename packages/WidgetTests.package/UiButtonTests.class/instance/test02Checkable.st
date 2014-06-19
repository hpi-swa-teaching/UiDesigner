tests
test02Checkable

	sut checked: true.
	
	self deny: sut checked.
	
	sut checkable: true.  
	
	self deny: sut checked.
	
	sut checked: true.
	
	self assert: sut checked.
	
	sut checkable: false.
	
	self deny: sut checked.  