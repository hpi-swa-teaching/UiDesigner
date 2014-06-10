geometry - testing
shouldUpdateLayoutForNewExtent: aPoint

	^ (super shouldUpdateLayoutForNewExtent: aPoint)
		or: ((self orientation == #vertical and: [self width ~= aPoint x])
			or: [self orientation == #horizontal and: [self height ~= aPoint y]])