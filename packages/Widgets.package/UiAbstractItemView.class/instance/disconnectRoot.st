as yet unclassified
disconnectRoot

	self model ifNotNil: [:m |
		"root signals"
		m disconnectSignal: #modelReset from: self selector: #reset.
		m disconnectSignal: #childrenInsertedFrom:to:inGroup: from: self selector: #insertRowsFor:from:to:inGroup:.
		m disconnectSignal: #childrenChangedFrom:to:inGroup: from: self selector: #changeRowsFor:from:to:inGroup:.
		m disconnectSignal: #childrenRemovedFrom:to:inGroup: from: self selector: #removeRowsFor:from:to:inGroup:.
		
		m disconnectSignal: #propertiesChanged from: self selector: #changeAllItems.
		m disconnectSignal: #propertiesChanged: from: self selector: #changeAllItemsWithProperties:].