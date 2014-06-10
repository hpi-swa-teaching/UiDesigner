geometry - testing
shouldUpdateLayoutForNewExtent: aPoint

	^ ((self columns anySatisfy: [:col | col resizeMode == #spaceFill])
		and: [self rowCountVisible > 0])
		and: [self width ~= aPoint x]