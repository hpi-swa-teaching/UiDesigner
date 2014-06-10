updating
updateFocus
	"The important part is always the current cell."
	
	self selection currentCell ifNotNil: [:cc |
		self focusChanged: (self cellBoundsFor: cc)].