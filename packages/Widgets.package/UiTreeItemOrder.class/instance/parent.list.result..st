updating
parent: currentParent list: someItems result: result

	| groupIndex maxGroupIndex |
	someItems ifEmpty: [^ self].
	
	groupIndex := 1.
	maxGroupIndex := 1.
	
	[groupIndex <= maxGroupIndex] whileTrue: [
		someItems do: [:each |
			| index |
			index := each valueOfProperty: #modelIndex.
			index parent = currentParent ifTrue: [
				index groupIndex = groupIndex ifTrue: [
					result add: each.
					(each valueOfProperty: #hasChildren)
						ifTrue: [self parent: index list: someItems result: result]].
				"During first iteration, this will climax."
				maxGroupIndex := maxGroupIndex max: index groupIndex]].
		groupIndex := groupIndex + 1].