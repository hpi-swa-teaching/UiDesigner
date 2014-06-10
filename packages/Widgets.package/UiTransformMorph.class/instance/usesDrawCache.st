caching
usesDrawCache
	"Indicate if a cache is used just now."
	
	^ usesDrawCache ifNil: [usesDrawCache := false]