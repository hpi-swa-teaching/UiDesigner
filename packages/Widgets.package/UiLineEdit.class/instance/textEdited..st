signals
textEdited: aText

	self deferEditSignalTime > 0 ifTrue: [
		self
			removeAlarm: #triggerDeferredEditSignal;
			addAlarm: #triggerDeferredEditSignal
			after: self deferEditSignalTime.
		^ self].
	
	self emitAlways.