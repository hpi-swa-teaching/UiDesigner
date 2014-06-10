layouting - deprecated
updateRowsLayout

	| offset |
	self rowsDo: [:rowInfo |
		rowInfo visible ifTrue: [
			rowInfo isSeparator
				ifTrue: [rowInfo items first left: 0]
				ifFalse: [
					offset := 0.
					self columnOrder items: rowInfo items withIndexDo: [:item :colIndex |
						| width hAlignment column |
						column := columns at: colIndex.
						column visible ifTrue: [
							width := column width.
							hAlignment := (columns at: colIndex) hAlignment.
							hAlignment = #left
								ifTrue: [item left: offset].
							hAlignment = #center
								ifTrue: [item left: offset + (width - item width // 2)].
							hAlignment = #right
								ifTrue: [item right: offset + width].
				
							offset := offset + width]]]]].