signals - setup
connectNode
	"See UiAbstractItemView>>connectIndex:."
	
	self column = 1 ifTrue: [
		self connect: self node signal: #modelReset toSelector: #modelReset.
		self connect: self node signal: #childrenChangedFrom:to:inGroup: toSelector: #rowsChangedFrom:to:inGroup:.
		self connect: self node signal: #childrenInsertedFrom:to:inGroup: toSelector: #rowsInsertedFrom:to:inGroup:.
		self connect: self node signal: #childrenRemovedFrom:to:inGroup: toSelector: #rowsRemovedFrom:to:inGroup:.
		self connect: self node signal: #propertiesChanged toSelector: #rowChanged].
	
	self connect: self node signal: #propertiesChanged: toSelector: #onPropertiesChanged:.