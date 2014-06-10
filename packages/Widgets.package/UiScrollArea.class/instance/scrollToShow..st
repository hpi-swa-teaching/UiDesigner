scrolling
scrollToShow: aRectangle
	"Scroll to include as much of aRectangle as possible, where aRectangle is in the scroller's local space."

	self transformMorph offset: (self offsetToShow: aRectangle).