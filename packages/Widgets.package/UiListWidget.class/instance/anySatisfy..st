collection api
anySatisfy: aBlock

	self do: [:index | (aBlock value: index) ifTrue: [^ true]].
	^ false