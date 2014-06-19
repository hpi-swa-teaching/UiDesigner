tests
test05SwitchingTimeliness

	| callback state |
	callback := [state := sut checked].
	
	self connect: sut signal: #turnedOn to: callback selector: #value.
	self connect: sut signal: #turnedOff to: callback selector: #value.
		
	sut toggle.
	
	self assert: state.
	
	sut toggle.
	
	self deny: state.