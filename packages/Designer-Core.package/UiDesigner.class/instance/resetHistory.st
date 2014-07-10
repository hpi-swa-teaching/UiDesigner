history
resetHistory
	self actionHistory: OrderedCollection new.
	self actionHistoryIndex: 0.
	self historyActionInProgress: false.
	self checkHistoryIndex.