tests
testClassIcon
	| firstHierarchyWidget |
	firstHierarchyWidget := widget ui treeView model hierarchy at: 1.
	self assert: ((((firstHierarchyWidget children at: #children) at: 1) at: #classIcon) = child1 class).