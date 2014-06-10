layouting - deprecated
updateColumnsLayout

	| offset |
	self columnsDo: [:colInfo |
		colInfo visible ifTrue: [
			offset := 0.
			self rowOrder items: colInfo items withIndexDo: [:item :rowIndex |
				| height row |
				row := rows at: rowIndex.
				row visible ifTrue: [
					height := row height.
					colInfo vAlignment = #top
						ifTrue: [item top: offset].
					colInfo vAlignment = #center
						ifTrue: [item top: offset + (height - item height // 2)].
					colInfo vAlignment = #bottom
						ifTrue: [item bottom: offset + height].
							
					offset := offset + height]]]].