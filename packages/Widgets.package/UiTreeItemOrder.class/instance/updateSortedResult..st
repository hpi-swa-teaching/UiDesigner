updating
updateSortedResult: sortedItems
	"rebuild tree-structure"

	| result |
	result := OrderedCollection new: sortedItems size.
	self parent: nil list: sortedItems result: result.
	
	self assert: sortedItems size == result size.
	^ result