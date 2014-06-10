rows/columns - sorting
enableAutoSort
	"Sort rows alphabetically in ascending order."
	
	self autoSortBlock: [:node1 :node2 | node1 asString <= node2 asString].
	self updateViewportLayout.