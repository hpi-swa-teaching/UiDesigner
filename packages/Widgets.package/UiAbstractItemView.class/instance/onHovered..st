signals - unboxing
onHovered: aModelIndex

	self hovered: (aModelIndex ifNotNil: [:mi | mi node]).