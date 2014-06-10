adding - deferred
endDeferAdd

	deferAdd := false.
	deferredAdditions ifNotNil: [
		self processDeferredAdditions.
		deferredAdditions := nil].