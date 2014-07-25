history
amendHistory 
	" remove everything in command history that was done after the current index"
	
	(self actionHistoryIndex < self actionHistory size) 
		ifTrue: [self actionHistory: (self actionHistory select: 
					[ :e | (self actionHistory indexOf: e ) <= (self actionHistoryIndex) ])].