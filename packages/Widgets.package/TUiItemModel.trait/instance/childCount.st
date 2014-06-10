item model - hierarchy
childCount

	^ self groups
		inject: 0
		into: [:sum :group | sum + (self childCountInGroup: group)]