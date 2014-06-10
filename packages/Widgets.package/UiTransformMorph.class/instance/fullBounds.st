layout
fullBounds

	| result |
	fullBounds ifNotNil: [^ fullBounds].
	
	result := super fullBounds.

	"Force re-layouting of one an only submorph."	
	self firstSubmorph ifNotNil: [:m |
		m fullBounds.
		self areaChanged.
		
		"IS this the right place to invalidate the cache?"
		drawCacheUpdateFlag := #tryUpdateCache].

	^ result