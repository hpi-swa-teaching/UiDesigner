accessing
hoveredDropMode: aSymbol

	hoveredDropMode == aSymbol ifTrue: [^ self].
	
	"Need some extra pixels in the vertical to visizualize #between."
	self invalidRect: ((self boundsFor: self hoveredCell) outsetBy: (0@2 corner: 0@2)).
	
	hoveredDropMode := aSymbol.