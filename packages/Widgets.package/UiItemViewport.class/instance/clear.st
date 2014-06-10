initialization
clear

	self setProperty: #isClearing toValue: true. 
	self selection clear.
	self removeProperty: #isClearing.
	
	columns do: [:col | col clear]. "Keep column-specific settings." self flag: #inconsistency.
	rows removeAll.
	
	self
		removeAllMorphs;
		extent: 1@1.