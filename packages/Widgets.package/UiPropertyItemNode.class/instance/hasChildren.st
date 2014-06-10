item model - hierarchy
hasChildren

	^ self children anySatisfy: [:nodes | nodes notEmpty]