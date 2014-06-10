rows/columns - to pixel
rowBoundsFor: aRowInfo
		
	aRowInfo visible ifFalse: [^ 0@0 extent: 0@0].
	
	^ self rowBoundsFor: aRowInfo top: (self topForRow: aRowInfo)