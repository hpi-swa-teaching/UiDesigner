initialization
clear

	self selection clear.
	
	columns do: [:col | col clear]. "Keep column-specific settings." self flag: #inconsistency.
	rows removeAll.
	
	self
		removeAllMorphs;
		extent: 1@1.