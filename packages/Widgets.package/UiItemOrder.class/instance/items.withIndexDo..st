enumerating
items: someItems withIndexDo: aBlock

	self map ifNil: [^ someItems withIndexDo: aBlock].
	map do: [:index | aBlock value: (someItems at: index) value: index]