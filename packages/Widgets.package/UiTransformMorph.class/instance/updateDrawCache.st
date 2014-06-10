drawing - cached
updateDrawCache

	| cacheCanvas |
	drawCache ifNotNil: [^ self].
	
	drawCache := Form extent: self firstSubmorph extent depth: 32.
	cacheCanvas := drawCache getCanvas.
	cacheCanvas fillColor: (Color gray: 0.3).
	submorphs reverseDo: [:m | m fullDrawCacheOn: cacheCanvas].
	
	drawCacheUpdateFlag := #idle.