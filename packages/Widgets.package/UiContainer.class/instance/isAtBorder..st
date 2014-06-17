as yet unclassified
isAtBorder: evt
	| threshold |
	threshold:= 5.
	(self top + threshold >= evt position y or: 
	 	self bottom - threshold <= evt position y or:  
		self left + threshold >= evt position x or: 
	  	self right - threshold <= evt position x)
			ifTrue: [^true].

	^ false