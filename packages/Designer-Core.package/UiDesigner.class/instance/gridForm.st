background
gridForm

	| form canvas |
	form := Form extent: 20@20 depth: 32.
	form floodFill: (Color gray: 0.98) at: 0@0.
	
	canvas := FormCanvas on: form.
	
	canvas point: 0@0 color: (Color gray: 0.2).
	
	^ form	