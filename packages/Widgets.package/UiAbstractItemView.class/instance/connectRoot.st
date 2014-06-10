model - initialization
connectRoot

	self model ifNotNil: [:m |
		"root signals"
		self connect: m signal: #modelReset toSelector: #reset.
		self connect: m signal: #childrenInsertedFrom:to:inGroup: toSelector: #insertRowsFor:from:to:inGroup: pattern: {#=. nil. 1. 2. 3}.
		self connect: m signal: #childrenChangedFrom:to:inGroup: toSelector: #changeRowsFor:from:to:inGroup: pattern: {#=. nil. 1. 2. 3}.
		self connect: m signal: #childrenRemovedFrom:to:inGroup: toSelector: #removeRowsFor:from:to:inGroup: pattern: {#=. nil. 1. 2. 3}.
		
		self connect: m signal: #propertiesChanged toSelector: #changeAllItems.
		self connect: m signal: #propertiesChanged: toSelector: #changeAllItemsWithProperties:].