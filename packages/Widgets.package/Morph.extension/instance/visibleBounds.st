*widgets-geometry
visibleBounds
	"Computes the rectangle that is not occluded and actually visible on the screen."

	| globalBounds |
	globalBounds := self boundsInWorld.
	  
	^ self owner
		ifNotNil: [self owner visibleBounds intersect: globalBounds]
		ifNil: [globalBounds]