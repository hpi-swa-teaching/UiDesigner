drawing
drawFocusOn: aCanvas rectangle: aRect
	
"	aCanvas
		frameRectangle: (aRect insetBy: 1)
		color: (Color r: 0.5 g: 0.5 b: 1.0 alpha: 0.8) muchDarker.
		
	aCanvas
		frameRoundRect: aRect
		radius: 3
		width: 1
		color: (Color r: 0.5 g: 0.5 b: 1.0 alpha: 0.5) muchDarker."