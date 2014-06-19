tests
test04Detect

	self
		assert: 0
		equals: (sut detect: [:node | node data = #long]) childCount.