drawing - cached
drawSubmorphsCachedOn: aCanvas
	
	aCanvas
		image: drawCache
		at: 0@0
		sourceRect: drawCache boundingBox
		rule: Form blend.