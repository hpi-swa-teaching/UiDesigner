layouting
updateItemLayout

	| vOffset hOffset cell |
	cellToBounds := Array new: self rowCount.
	cell := 0@0.
	
	vOffset := 0.
	hOffset := 0.
	self rowsDo: [:rowInfo |		
		"Prepare bounds cache for current row."
		cell := 0 @ (cell y + 1).
		cellToBounds at: cell y put: (Array new: self columnCount).
		
		rowInfo visible ifTrue: [
			| deltaHeight |
			deltaHeight := rowInfo height.
			hOffset := 0.

			self columnOrder items: rowInfo items withIndexDo: [:item :colIndex |
				| deltaWidth columnInfo |
				columnInfo := columns at: colIndex.
				deltaWidth := columnInfo width.
				
				"Advance cell."
				cell := cell + (1@0).
				
				columnInfo visible ifTrue: [
					columnInfo hAlignment == #left ifTrue: [item left: hOffset].
					columnInfo hAlignment == #center ifTrue: [item left: hOffset + (deltaWidth - item width // 2)].
					columnInfo hAlignment == #right ifTrue: [item right: hOffset + deltaWidth].
					columnInfo vAlignment == #top ifTrue: [item top: vOffset].
					columnInfo vAlignment == #center ifTrue: [item top: vOffset + (deltaHeight - item height // 2)].
					columnInfo vAlignment == #bottom ifTrue: [item bottom: vOffset + deltaHeight].
					
					"Fill bounds cache."
					(cellToBounds at: cell y) at: cell x put: {hOffset@vOffset.deltaWidth@deltaHeight}.

					hOffset := hOffset + deltaWidth]].
			rowInfo isSeparator ifTrue: [rowInfo items first left: 0].
			vOffset := vOffset + deltaHeight]].

	"Use offsets of last visible row."
	self extent: hOffset@(vOffset+2).