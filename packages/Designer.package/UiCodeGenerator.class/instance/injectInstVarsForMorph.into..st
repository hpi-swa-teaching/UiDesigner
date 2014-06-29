private - inst vars
injectInstVarsForMorph: aMorph into: aCollection

	"Root panel already has an instance variable."
	aMorph ~~ source ifTrue: [
		aMorph
			setProperty: #objectNameTemp
			toValue: (aMorph objectName ifEmpty: [self nextDefaultName]).
		
		aMorph
			setProperty: #objectDescriptionTemp
			toValue:  (aMorph objectDescription ifEmpty: ['No description given.']).
		
		aCollection add: (Dictionary newFrom: {
			#name -> (aMorph valueOfProperty: #objectNameTemp).
			#description -> (aMorph valueOfProperty: #objectDescriptionTemp).
			#hasName -> aMorph objectName notEmpty})].
	
	(aMorph isKindOf: UiContainer)
		ifTrue: [
			aMorph children do: [:m | self injectInstVarsForMorph: m into: aCollection]].