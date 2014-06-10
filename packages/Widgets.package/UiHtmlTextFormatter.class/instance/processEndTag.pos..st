parsing
processEndTag: aTag pos: index

	|start end attrs|
	"De-Accumulate adjacent tags."
	runStack top at: 4 put: runStack top fourth - 1.
	runStack top fourth > 0
		ifTrue: [^ self "not yet"].
		
	"Set end index."
	runStack top at: 3 put: index - offset.
	
	"Write to run array."
	start := runStack top second.
	end := runStack top third.
	attrs := runStack top first.
	UiPlatform current
		runArray: runArray
		add: attrs
		withOccurrences: end - start + 1.

	runStack pop.
	runStack top at: 2 put: index - offset + 1.