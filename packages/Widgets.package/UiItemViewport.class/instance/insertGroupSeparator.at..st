add/remove - inserting
insertGroupSeparator: aGroupSeparator at: aRowIndex

	| row |
	row := rows at: aRowIndex.
	self columns do: [:column |
		"Insert separator in column."
		column items 
			add: aGroupSeparator
			beforeIndex: aRowIndex.
		
		"Row was empty so just append."
		row items add: aGroupSeparator.
		
		self addMorphBack: aGroupSeparator].