layouting
updateMaxItemExtent

	maxItemExtent := 1@1.
	self rows do: [:rowInfo |
		rowInfo isSeparator ifFalse: [
			maxItemExtent := maxItemExtent max: rowInfo items first extent]].