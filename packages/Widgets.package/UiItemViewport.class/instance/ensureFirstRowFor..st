add/remove - private
ensureFirstRowFor: aParentModelIndex
	
	^ rows
		add: UiViewRowInfo new
		afterIndex: (rows indexOf: (rows detect: [:row | row firstModelIndex = aParentModelIndex]))