collection api
detect: aBlock

	self do: [:index | (aBlock value: index) ifTrue: [^ index]].
	^ nil