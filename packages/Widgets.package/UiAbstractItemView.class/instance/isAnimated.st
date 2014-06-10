testing
isAnimated
	"Show fading animations for item updates?"
	
	^ self animated and: [
		self viewport isNil or: [
			self viewport drawCacheActive not]]