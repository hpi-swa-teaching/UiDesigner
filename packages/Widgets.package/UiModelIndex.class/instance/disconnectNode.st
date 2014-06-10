signals - setup
disconnectNode
	
	self node disconnectSignal: #modelReset from: self selector: #modelReset.
	self node disconnectSignal: #childrenChangedFrom:to:inGroup: from: self selector: #rowsChangedFrom:to:inGroup:.
	self node disconnectSignal: #childrenInsertedFrom:to:inGroup: from: self selector: #rowsInsertedFrom:to:inGroup:.
	self node disconnectSignal: #childrenRemovedFrom:to:inGroup: from: self selector: #rowsRemovedFrom:to:inGroup:.
	self node disconnectSignal: #propertiesChanged from: self selector: #rowChanged.
	
	self node disconnectSignal: #propertiesChanged: from: self selector: #onPropertiesChanged:.