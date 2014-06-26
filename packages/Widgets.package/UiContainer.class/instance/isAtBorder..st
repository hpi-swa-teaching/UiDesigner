highlighting
isAtBorder: evt
	(self top     + self class borderTreshhold >= evt position y or: 
 	self bottom - self class borderTreshhold <= evt position y or:  
	self left      + self class borderTreshhold >= evt position x or: 
  	self right     - self class borderTreshhold <= evt position x)
			ifTrue: [^true].

	^ false