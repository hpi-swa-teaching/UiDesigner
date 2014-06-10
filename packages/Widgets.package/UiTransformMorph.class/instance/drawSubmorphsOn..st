drawing
drawSubmorphsOn: aCanvas

	(self usesDrawCache not or: [drawCache isNil])
		ifTrue: [^ super drawSubmorphsOn: aCanvas].

	self drawCacheOn: aCanvas.  