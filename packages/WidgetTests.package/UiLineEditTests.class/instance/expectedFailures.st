testing
expectedFailures

	^ Smalltalk platformName = 'unix'
		ifTrue: [#(testK02DeferEditSignal)]
		ifFalse: [#()]