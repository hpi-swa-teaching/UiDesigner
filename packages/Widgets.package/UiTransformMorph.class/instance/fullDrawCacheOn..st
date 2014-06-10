drawing - cached
fullDrawCacheOn: aCanvas
	"Update the cache if cache is nil. then use the cache to draw."
	
	self
		updateDrawCache;
		drawCacheOn: aCanvas.