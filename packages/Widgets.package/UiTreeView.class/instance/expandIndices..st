expand/collapse - model index
expandIndices: someModelIndices

	self flag: #asynch. "mt: Should use cached values from morph in item view?"
	(someModelIndices select: [:index | index hasChildren]) ifEmpty: [^ self].

	self viewport beginChangeLayout.

	someModelIndices do: [:index | self
			expandIndexSilently: index checkParents: true]. 

	self viewport endChangeLayout.