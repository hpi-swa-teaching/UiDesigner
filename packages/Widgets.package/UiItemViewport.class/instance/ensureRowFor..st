add/remove - private
ensureRowFor: aModelIndex
	"Adds a new row if needed. Returns the correct one if possible. Assumption: Parent node is exanded."
	
	| row rowIndex isCorrectRow isPreviousSibling isParentRow isFirstInGroup currentPath |
	isCorrectRow := [:r | ((r isSeparator not
		and: [r parentModelIndex = aModelIndex parent])
		and: [r groupIndex = aModelIndex groupIndex])
		and: [r firstModelIndex row = aModelIndex row]].
	isPreviousSibling := [:r | (r isSeparator not
		and: [r parentModelIndex = aModelIndex parent])
		and: [r groupIndex = aModelIndex groupIndex and: [r firstModelIndex row = (aModelIndex row - 1)]]].
	isParentRow := [:r | r isSeparator not and: [r firstModelIndex = aModelIndex parent]].
	isFirstInGroup := [:separator | ((separator parentModelIndex = aModelIndex parent
		and: [separator groupIndex = aModelIndex groupIndex])
		and: [aModelIndex row = 1])
		and: [aModelIndex column = 1]].
		
	rowIndex := 0.
	
	currentPath := Stack new.
	rows detect: [:r | rowIndex := rowIndex + 1.
		
		(isCorrectRow value: r)
			ifTrue: [row := r. true]
			ifFalse: [
				(r isSeparator and: [isFirstInGroup value: r])
					ifTrue: [row := rows add: UiViewRowInfo new afterIndex: rowIndex. true]
					ifFalse: [	(currentPath isEmpty and: [(isParentRow value: r) or: [isPreviousSibling value: r]])
						ifTrue: [currentPath push: r. false]
						ifFalse: [	currentPath isEmpty ifTrue: [false] ifFalse: [
							""
							[currentPath isEmpty or: [currentPath top firstModelIndex = r parentModelIndex]]
								whileFalse: [currentPath pop].
					
							currentPath isEmpty
								ifTrue: [
									row := rows add: UiViewRowInfo new beforeIndex: (
										(rows at: rowIndex - 1) isSeparator
											ifTrue: [rowIndex - 1]
											ifFalse: [rowIndex]).
									true "first child of parent"]
								ifFalse: [(isPreviousSibling value: r)
									ifTrue: [currentPath := Stack new. currentPath push: r. false]
									ifFalse: [currentPath push: r. false]]]]]]
		] ifNone: [row := rows add: UiViewRowInfo new].
	
	^ row