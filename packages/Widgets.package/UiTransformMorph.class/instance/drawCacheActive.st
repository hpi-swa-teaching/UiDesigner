caching
drawCacheActive
	"Indicate whether drawing should gain a speedup using a cache."	

	^ drawCacheActive ifNil: [false]