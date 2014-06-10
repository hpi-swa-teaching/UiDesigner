colors
color

	self morph hasKeyboard
		ifTrue: [^ (Color r: 0.0 g: 0.0 b: 0.5) muchLighter paler].
		
	^ super color