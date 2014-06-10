testing
isHorizontalScrollBarVisible

	^ self horizontalScrollBarPolicy = #alwaysOn
		or: [self horizontalScrollBarPolicy = #asNeeded
			and: [self widget isNil or: [self transformMorph width < self widget width]]]