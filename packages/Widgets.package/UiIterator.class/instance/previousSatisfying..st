iterator api
previousSatisfying: aBlock

	| node |
	[(node := self previous) ~= self root] whileTrue: [
		(aBlock value: node) ifTrue: [^ node]].
	^ nil