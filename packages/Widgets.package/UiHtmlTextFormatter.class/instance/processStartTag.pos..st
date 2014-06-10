parsing
processStartTag: aTag pos: index

	|start end attrs|
	"Accumulate adjacent tags."
	(runStack size > 1 and: [runStack top second = (index - offset + 1) "= adjacent start tags"])
		ifTrue: [
			runStack top at: 1 put: (runStack top first copy addAll: (self mapTagToAttribute: aTag); yourself).
			runStack top at: 4 put: (runStack top fourth + 1). "increase number of open tags"
			^self].
			
	"Set end index."
	runStack top at: 3 put: index - offset.
	"Write to run array."
	start := runStack top second.
	end := runStack top third.
	attrs := runStack top first.
	UiPlatform current
		runArray: 	runArray
		add: attrs
		withOccurrences: end - start + 1.
	"Remove start/end info to reuse attributes later."
	runStack top at: 2 put: nil.
	runStack top at: 3 put: nil.
	"Copy attr list and add new attr."
	runStack push: ({runStack top first copy addAll: (self mapTagToAttribute: aTag); yourself. index - offset + 1. nil. 1}).