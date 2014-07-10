expand/collapse - convenience
toggleAllTopLevelNodes

	self viewport beginChangeLayout.

	self model groups do: [:group |
		(1 to: (self model childCountInGroup: group))
			collect: [:row | (self modelIndicesFor: (self model childAt: row inGroup: group)) first]
			thenDo: [:index | self toggleIndex: index]].
		
	self viewport endChangeLayout.