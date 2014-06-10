model - initialization
connectIndex: index

	"For all columns resp. whole rows."
	index column = 1 ifTrue: [
		self connect: index signal: #modelReset toSelector: #resetChildrenFor: pattern: #(0).
		self connect: index signal: #rowsInsertedFrom:to:inGroup: toSelector: #insertRowsFor:from:to:inGroup: pattern: #(0 1 2 3).
		self connect: index signal: #rowsChangedFrom:to:inGroup: toSelector: #changeRowsFor:from:to:inGroup: pattern: #(0 1 2 3).
		self connect: index signal: #rowsRemovedFrom:to:inGroup: toSelector: #removeRowsFor:from:to:inGroup: pattern: #(0 1 2 3).
		self connect: index signal: #rowChanged toSelector: #changeRowFor: pattern: #(0)].
	
	"For a single column resp. a single cell."
	self connect: index signal: #itemChanged toSelector: #changeItemFor: pattern: #(0).
