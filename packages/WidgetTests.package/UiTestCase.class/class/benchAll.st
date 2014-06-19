as yet unclassified
benchAll

	| results |
	results := Dictionary new.
	results at: #benchClass put: self.
	self allSelectors
		select: [:symbol | symbol beginsWith: 'bench']
		thenDo: [:symbol |
			Transcript cr; show: self name, ' >> ', symbol.
			results at: symbol put: (self new perform: symbol)].
	results explore.