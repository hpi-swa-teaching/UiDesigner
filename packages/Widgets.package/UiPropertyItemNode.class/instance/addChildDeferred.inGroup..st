adding - deferred
addChildDeferred: aNode inGroup: aGroup
	"Private. Use #addChild:inGroup: with a prior call to #beginDeferAdd."

	deferredAdditions add: aNode -> aGroup.
	deferredAdditions size >= self deferThreshold
		ifTrue: [self processDeferredAdditions].