accessing
bindings

	^ self doItContext
		ifNil: [#()]
		ifNotNil: [:ctxt |
			self flag: #shadowing. "mt: duplicate keys possible due to shadowin."
			(ctxt tempNames withIndexCollect: [:nm :idx |
				nm -> (ctxt namedTempAt: idx)])]