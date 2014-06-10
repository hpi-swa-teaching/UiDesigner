rows/columns - to pixel
columnBoundsAt: aColIndex

	aColIndex > columns size
		ifTrue: [^ 0@0 extent: 0@0].

	^ self columnBoundsFor: (self columnAt: aColIndex)