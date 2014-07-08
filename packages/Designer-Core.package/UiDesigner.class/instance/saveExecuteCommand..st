history
saveExecuteCommand: aCommand

	self checkHistoryIndex.
	self historyActionInProgress: true.
	aCommand execute.
	self historyActionInProgress: false.