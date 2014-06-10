geometry
optimalSize
	"Return the height of the largest item."
	
	| max |
	max := 0.
	items do: [:item |
		item vResizing ~= #spaceFill
			ifTrue: [max := max max: item height]].
	self headerItem ifNotNil: [:hi | hi submorphs ifNotEmpty: [
		max := max max: self headerItem submorphBounds height]].
	^ max