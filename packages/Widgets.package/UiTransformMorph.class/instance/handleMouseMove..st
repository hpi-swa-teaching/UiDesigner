events-processing
handleMouseMove: anEvent
	"Receive any mouse move event."
	
	super handleMouseMove: anEvent.
	
	((anEvent hand hasSubmorphs and: [self firstSubmorph notNil])
		and: [self firstSubmorph wantsDroppedMorph: anEvent hand submorphs first event: anEvent])
		ifTrue: [moveFlag := #doMoveScrolling.
			self isStepping ifFalse: [self startStepping]]
		ifFalse: [moveFlag := #idle.
			self drawCacheActive ifFalse: [self stopStepping]].