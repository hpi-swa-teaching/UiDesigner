tests
testClassIcon
	self assert: (((((widget ui treeView model hierarchy at: 1) children at: #children) at: 1) at: #classIcon) = child1 class).