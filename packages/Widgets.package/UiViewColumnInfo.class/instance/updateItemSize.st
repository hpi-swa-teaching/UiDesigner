geometry
updateItemSize

	self items do: [:item | 
		item hResizing = #spaceFill
			ifTrue: [item width: self width]].