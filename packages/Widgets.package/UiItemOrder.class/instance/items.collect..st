enumerating
items: someItems collect: aBlock

	self map ifNil: [^ someItems collect: aBlock].
	^ map collect: [:index | aBlock value: (someItems at: index)]