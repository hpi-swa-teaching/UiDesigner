iterator api
nextSatisfying: aBlock

	| node |
	[(node := self next) notNil] whileTrue: [
		(aBlock value: node) ifTrue: [^ node]].
	^ nil