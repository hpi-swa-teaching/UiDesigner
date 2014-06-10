drag scrolling
updateOffsetByHand: aHand

	| threshold pos dx dy maxDelta |
	threshold := 50. "in pixel"
	maxDelta := 30. "will be interpolated linear in threshold"
	pos := self globalPointToLocal: aHand position.
	dx := 0. "horizontal offset delta"
	dy := 0. "vertical offset delta"
	
	(self bounds containsPoint: pos) ifTrue: [
		dx := dx - (((1.0 - ((pos - self left) x / threshold)) max: 0) * maxDelta).
		dx := dx + (((1.0 - ((self right - pos) x / threshold)) max: 0) * maxDelta).
		dy := dy - (((1.0 - ((pos - self top) y / threshold)) max: 0) * maxDelta).
		dy := dy + (((1.0 - ((self bottom - pos) y / threshold)) max: 0) * maxDelta)].
	
	self offset: ((self offset + (dx @ dy))
		min: self firstSubmorph extent - self extent
		max: 0@0).