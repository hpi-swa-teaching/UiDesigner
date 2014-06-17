tests
testIconVisible
	self assert: ((((widget ui treeView model hierarchy at: 1) at: #classIcon) = nil ) not).