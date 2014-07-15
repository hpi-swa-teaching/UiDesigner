tests
testChangePropagation
	
	model changeProperty: #width To: 1337.
	self assert: (button width) equals: 1337.