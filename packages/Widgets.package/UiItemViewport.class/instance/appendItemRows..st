add/remove - appending
appendItemRows: data
	"group -> row -> column -> model index -> item/morph"
	
	data withIndexDo: [:group :groupIndex | | indent |
		indent := nil.
		self appendGroupSeparator: group key.
		
		group value do: [:row | row do: [:indexToItem |
			indent ifNotNil: [:i |
				indexToItem value setProperty: #indent toValue: i].
			self
				appendMorph: indexToItem value
				inRow: (self appendRowFor: indexToItem key)
				forIndex: indexToItem key.
			indent ifNil: [
				indent := indexToItem value valueOfProperty: #indent]]].
	
		indent ifNotNil: [:i |
			group key setProperty: #indent toValue: i].
	].