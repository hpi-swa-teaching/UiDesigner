drawing - testing
shouldDraw
	"Drawing a viewport is can fail if involved caches are being updated."

	^ isLayoutBeingModified ~~ true