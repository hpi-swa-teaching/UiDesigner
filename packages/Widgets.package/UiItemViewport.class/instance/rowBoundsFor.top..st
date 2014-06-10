rows/columns - to pixel
rowBoundsFor: aRowInfo top: top
		
	aRowInfo visible ifFalse: [^ 0@0 extent: 0@0].
	
	^ self left @ top
		extent: self width @ aRowInfo height