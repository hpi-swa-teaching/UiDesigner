caching
processCacheFlags

	self drawCacheActive
		ifFalse: [^ self].

	self usesDrawCache ifFalse: [
		"If cache update is already defered, schedule it now."
		drawCacheUpdateFlag = #deferUpdateCache
			ifTrue: ["self scheduleDrawCacheUpdate"
				self flag: #tofix.
				drawCache := nil].
		
		"If someone wants to update the cache, try to defer it."
		drawCacheUpdateFlag = #tryUpdateCache
			ifTrue: [drawCacheUpdateFlag := #deferUpdateCache].
		
		] ifTrue: [
		drawCacheFlag = #raised
			ifTrue: [drawCacheFlag := #cleared]
			ifFalse: [	self usesDrawCache: false]].