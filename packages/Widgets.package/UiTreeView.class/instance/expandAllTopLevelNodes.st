expand/collapse - convenience
expandAllTopLevelNodes

	self viewport beginChangeLayout.

	self model groups do: [:group |
		(1 to: (self model childCountInGroup: group))
			collect: [:row | (self modelIndicesFor: (self model childAt: row inGroup: group)) first]
			thenDo: [:index | index hasChildren ifTrue: [self expandIndexSilently: index]]].
		
	self viewport endChangeLayout.