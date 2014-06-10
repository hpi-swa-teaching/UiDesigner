updating
updateSortedResult: ungroupedSortedItems
	"An optional post-processing step. Restore groups. Optimized for speed."

	| groupedSortedItems currentItems nextItems sortedSize currentSize nextSize groupIndex |
	groupedSortedItems := Array new: ungroupedSortedItems size.
	currentItems := ungroupedSortedItems asArray.
	nextItems := Array new: ungroupedSortedItems size.
	
	sortedSize := nextSize := 0.
	currentSize := currentItems size.
	
	groupIndex := 1.
	
	[currentSize == 0] whileFalse: [
		| temp |
		1 to: currentSize do: [:currentIndex | 
			((currentItems at: currentIndex) valueOfProperty: #modelIndex) groupIndex = groupIndex
				ifTrue: [sortedSize := sortedSize + 1.
					groupedSortedItems at: sortedSize put: (currentItems at: currentIndex)]
				ifFalse: [nextSize := nextSize + 1.
					nextItems at: nextSize put: (currentItems at: currentIndex)]].
	
		"Swap buffers."
		temp := currentItems.
		currentItems := nextItems.
		nextItems := temp.
		
		"Copy and reset buffer sizes."
		currentSize := nextSize.
		nextSize := 0.
		
		groupIndex := groupIndex + 1].
	
	^ groupedSortedItems