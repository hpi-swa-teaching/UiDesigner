testing
testHeading
	self assert: ((((model widgets at: 1) at: #class ifPresent: false ifAbsent: true) )).