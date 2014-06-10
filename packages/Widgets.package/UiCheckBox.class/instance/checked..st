accessing
checked: aBoolean
	"Add explicit switching behavior with new signals."
	
	| old |
	old := self checked.
	
	super checked: aBoolean.
	
	old ~= aBoolean ifTrue: [
		aBoolean
			ifTrue: [self turnedOn]
			ifFalse: [self turnedOff]].
