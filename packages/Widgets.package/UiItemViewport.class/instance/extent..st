geometry
extent: aPoint

	(self shouldUpdateLayoutForNewExtent: aPoint) in: [:updateNeeded |
		super extent: aPoint.
		self resizedToWidth: aPoint x height: aPoint y.
		updateNeeded ifTrue: [self updateLayout]].