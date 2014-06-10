rows/columns - to pixel
rowBoundsAt: aRowIndex

	| top |
	aRowIndex > rows size
		ifTrue: [^ 0@0 extent: 0@0].

	"use cache for better performance"
	top := ((cellToBounds at: aRowIndex)
		detect: [:cellBounds | cellBounds notNil] "skip hidden columns"
		ifNone: [^ 0@0 extent: 0@0]) first y.

	^ self rowBoundsFor: (self rowAt: aRowIndex) top: top