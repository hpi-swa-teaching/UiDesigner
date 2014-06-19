tests
test05DetectNil

	self assert: (sut detect: [:node | node data = #noExisting] ifNone: []) isNil.