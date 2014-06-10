collection api
allSatisfy: aBlock

	self do: [:index | (aBlock value: index) ifFalse: [^ false]].
	^ true