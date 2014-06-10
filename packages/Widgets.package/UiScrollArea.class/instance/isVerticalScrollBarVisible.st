testing
isVerticalScrollBarVisible

	^ self verticalScrollBarPolicy = #alwaysOn
		or: [self verticalScrollBarPolicy = #asNeeded
			and: [self widget isNil or: [self transformMorph height < self widget height]]]