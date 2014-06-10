geometry
updateItemSize

	self items do: [:item | 
		item vResizing = #spaceFill
			ifTrue: [item height: self height]].