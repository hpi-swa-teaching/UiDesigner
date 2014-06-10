enumerating
items: someItems do: aBlock

	self map ifNil: [^ someItems do: aBlock].
	map do: [:index | aBlock value: (someItems at: index)]