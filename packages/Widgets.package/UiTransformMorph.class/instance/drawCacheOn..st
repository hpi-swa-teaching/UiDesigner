drawing - cached
drawCacheOn: aCanvas
	
	aCanvas
		transformBy: transform
		clippingTo: self innerBounds
		during: [:myCanvas | myCanvas translucentImage: drawCache at: 0@0]
		smoothing: smoothing.