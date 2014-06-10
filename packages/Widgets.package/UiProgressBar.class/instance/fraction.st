accessing
fraction

	^ maximum
		ifNil: [1.0]
		ifNotNil: [(currentValue - minimum) / (maximum - minimum)]