accessing
offset: aPoint

	| tPoint |
	tPoint := aPoint truncated max: 0@0.
	
	tPoint = self offset ifTrue: [^ self].

	self drawCacheActive ifTrue: [
		drawCacheFlag := #raised.
		drawCache
			ifNil: [self scheduleDrawCacheUpdate]
			ifNotNil: [self usesDrawCache: true]].
	
	"super offset: tPoint."
	transform := transform withOffset: tPoint - self innerBounds topLeft.
	self redraw.

	self
		offsetChanged: self offset;
		horizontalOffsetChanged: self offset x;
		verticalOffsetChanged: self offset y.