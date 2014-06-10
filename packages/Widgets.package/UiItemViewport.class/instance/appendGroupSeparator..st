add/remove - appending
appendGroupSeparator: aGroupSeparator

	| row |
	row := rows add: UiViewRowInfo new.
	self columns do: [:column |
		column items addLast: aGroupSeparator.
		row items add: aGroupSeparator.
		self addMorphBack: aGroupSeparator].