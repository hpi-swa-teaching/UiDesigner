expand/collapse - convenience
expandTopLevelRows: someRows

	self viewport beginChangeLayout.

	someRows do: [:row |
		self expandIndexSilently: (self modelIndicesFor: (self model childAt: row inGroup: self model groups first)) first].

	self viewport endChangeLayout.