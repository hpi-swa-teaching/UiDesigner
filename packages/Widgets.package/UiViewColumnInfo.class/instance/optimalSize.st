geometry
optimalSize
	"Return the width of the largest item."
	
	| max |
	max := 0.
	items do: [:item | 
		((item hasProperty: #isGroupSeparator) or: [item hResizing == #spaceFill])
			ifFalse: [max := max max: (item width + (item valueOfProperty: #indent))]].
	self headerItem ifNotNil: [:hi | hi submorphs ifNotEmpty: [
		max := max max: self headerItem submorphBounds width + 5. "font rendering bugfix" ]].
	^ max