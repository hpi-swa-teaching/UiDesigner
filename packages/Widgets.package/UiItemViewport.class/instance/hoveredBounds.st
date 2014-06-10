geometry
hoveredBounds

	| hb |
	hb := self boundsFor: self hoveredCell.
	^ (self localPointToGlobal: hb topLeft)
		extent: hb extent  