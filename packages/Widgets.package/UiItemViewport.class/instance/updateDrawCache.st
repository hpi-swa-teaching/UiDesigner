drawing - cached
updateDrawCache

	| canvas oldCacheFlag |
	oldCacheFlag := drawCacheActive.
	drawCacheActive := false.
	
	canvas := FormCanvas extent: self extent depth: 32 origin: 0@0 clipRect: (0@0 extent: self extent).
	canvas fillColor: Color white.
	self drawSubmorphsOn: canvas.
	drawCache := canvas form.

	drawCacheActive := oldCacheFlag.