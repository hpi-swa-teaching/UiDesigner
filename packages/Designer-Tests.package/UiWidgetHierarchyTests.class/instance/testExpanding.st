tests
testExpanding
	|row|
	widget ui treeView expandAllNodes.
	row:=widget ui treeView viewport rowAt: 2.
	self assert: (row isExpanded = true)