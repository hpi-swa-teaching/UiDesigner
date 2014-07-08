history
addCommand: aCommand
	self amendHistory.
	self actionHistory add: aCommand.
	self actionHistoryIndex: self actionHistoryIndex + 1.
	self checkHistoryIndex.