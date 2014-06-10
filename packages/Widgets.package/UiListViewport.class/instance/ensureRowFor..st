add/remove - private
ensureRowFor: aModelIndex
	"Adds a new row if needed. Returns the correct one if possible."
	
	| row rowIndex isCorrectRow isPreviousSibling isFirstInGroup |
	isCorrectRow := [:r | r firstModelIndex group = aModelIndex group
		and: [r firstModelIndex row = aModelIndex row]].
	isPreviousSibling := [:r | r firstModelIndex group = aModelIndex group
		and: [r firstModelIndex row = (aModelIndex row - 1)]].
	isFirstInGroup := [:separator | (((separator items first valueOfProperty: #groupIndex) = aModelIndex groupIndex)
		and: [aModelIndex row = 1])
		and: [aModelIndex column = 1]].
	
	rowIndex := 0.
	
	rows detect: [:r | rowIndex := rowIndex + 1.
		r isSeparator ifTrue: [
			(isFirstInGroup value: r)
				ifTrue: [
					row := rows add: UiViewRowInfo new afterIndex: rowIndex.
					true]
				ifFalse: [false]] ifFalse: [
		(isCorrectRow value: r)
			ifTrue: [row := r. true]
			ifFalse: [(isPreviousSibling value: r)
				ifTrue: [row := rows add: UiViewRowInfo new after: r. true]
				ifFalse: [false]]
		]] ifNone: [row := rows add: UiViewRowInfo new].
	
	^ row