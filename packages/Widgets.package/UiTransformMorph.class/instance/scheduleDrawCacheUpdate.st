caching
scheduleDrawCacheUpdate

	drawCache := nil.
	drawCacheUpdateFlag := #idle.

	WorldState addDeferredUIMessage: [
		self usesDrawCache ifFalse: [self updateDrawCache]].