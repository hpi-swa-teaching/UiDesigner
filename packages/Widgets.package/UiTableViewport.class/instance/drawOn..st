drawing
drawOn: aCanvas

	self shouldDraw ifFalse: [^ self].

	self drawCacheActive ifFalse: [
		self drawGridOn: aCanvas].

	super drawOn: aCanvas.